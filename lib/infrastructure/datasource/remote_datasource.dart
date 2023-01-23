import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/infrastructure/dto/user_dto.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

abstract class RemoteDatasource {
  User? get getUser;

  bool? get emailIsVerified;

  Future<Uri?> get dynamicLink;

  Future<UserDto> register({
    required String email,
    required String password,
    required String displayName,
  });

  bool get isLoggedIn;

  Future<UserDto> login({required String email, required String password});

  Future<void> logout();

  Future<void> sendEmailVerificationLink();

  void initializeDynamicLink();

  void onListenToDynamicLink(void Function(Uri dynamicLink) handleDynamicLink,
      void Function(AuthFailure failure) onError);

  Future<UserDto> loginWithGoogle();
}

@Singleton(as: RemoteDatasource)
class RemoteDatasourceImpl implements RemoteDatasource {
  RemoteDatasourceImpl(this.firebaseAuth, this.firebaseDynamicLinks) {
    // handleDynamicLinks();

    _user = firebaseAuth.currentUser;

    firebaseAuth.userChanges().listen((User? user) {
      _user = user;
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  final FirebaseAuth firebaseAuth;
  final FirebaseDynamicLinks firebaseDynamicLinks;
  User? _user;
  Uri? _deepLink;
  GoogleSignIn? _googleSignIn;

  @override
  Future<UserDto> register({
    required String email,
    required String password,
    required String displayName,
  }) async {
    try {
      UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user!;

      await _user!.updateDisplayName(displayName);
      await _user!.reload();

      return UserDto.fromFirebaseUser(_user!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw const AuthFailure.weekPassword();
      } else if (e.code == 'email-already-in-use') {
        throw AuthFailure.accountAlreadyExist(email);
      } else if (e.code == 'network-request-failed') {
        throw const AuthFailure.networkFailure();
      }

      throw AuthFailure.authGenericFailure(failedValue: e.code);
    }
  }

  @override
  bool get isLoggedIn => _user != null;

  @override
  Future<UserDto> login(
      {required String email, required String password}) async {
    try {
      UserCredential userCredential =
          await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _user = userCredential.user!;
      return UserDto.fromFirebaseUser(_user!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw const AuthFailure.userNotFound();
      } else if (e.code == 'wrong-password') {
        throw const AuthFailure.wrongPassword();
      } else if (e.code == 'network-request-failed') {
        throw const AuthFailure.networkFailure();
      }

      throw AuthFailure.authGenericFailure(failedValue: e.code);
    }
  }

  @override
  Future<void> logout() async {
    _googleSignIn?.disconnect();
    _googleSignIn?.signOut();
    firebaseAuth.signOut();
  }

  @override
  User? get getUser => _user;

  @override
  bool? get emailIsVerified => _user?.emailVerified;

  @override
  Future<void> sendEmailVerificationLink() async {
    var actionCodeSettings = ActionCodeSettings(
      url:
          'https://www.flutterauthdemonstration.com/?validate-email=${_user!.email}',
      androidPackageName: 'com.example.flutter_auth_app',
      androidInstallApp: true,
      androidMinimumVersion: '12',
      // iOSBundleId: 'com.example.ios',
      handleCodeInApp: true,
    );
    return await _user!.sendEmailVerification(actionCodeSettings);
  }

  @override
  Future<Uri?> get dynamicLink async {
    return _deepLink;
  }

  @override
  Future<Uri?> initializeDynamicLink() async {
    final PendingDynamicLinkData? data =
        await firebaseDynamicLinks.getInitialLink();

    if (data == null) {
      return null;
    }

    var actionCode = data.link.queryParameters['oobCode'];
    try {
      await firebaseAuth.checkActionCode(actionCode!);
      await firebaseAuth.applyActionCode(actionCode);
      // If successful, reload the user:
      firebaseAuth.currentUser?.reload();
      return data.link;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'network-request-failed') {
        throw const AuthFailure.networkFailure();
      }
      throw AuthFailure.authGenericFailure(failedValue: e.code);
    }
  }

  @override
  void onListenToDynamicLink(void Function(Uri dynamicLink) handleDynamicLink,
      void Function(AuthFailure failure) onError) {
    firebaseDynamicLinks.onLink.listen((event) async {
      var actionCode = event.link.queryParameters['oobCode'];
      try {
        await firebaseAuth.checkActionCode(actionCode!);
        await firebaseAuth.applyActionCode(actionCode);
        await firebaseAuth.currentUser?.reload();
        handleDynamicLink(event.link);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'network-request-failed') {
          onError(const AuthFailure.networkFailure());
        }
        onError(AuthFailure.authGenericFailure(failedValue: e.code));
      }
    });
  }

  @override
  Future<UserDto> loginWithGoogle() async {
    try {
      _googleSignIn = GoogleSignIn();
      final googleUser = await _googleSignIn!.signIn();
      final googleAuth = await googleUser!.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      _user = userCredential.user!;
      return UserDto.fromFirebaseUser(_user!);
    } on FirebaseException catch (e) {
      if (e.code == 'weak-password') {
        throw const AuthFailure.weekPassword();
      } else if (e.code == 'network-request-failed') {
        throw const AuthFailure.networkFailure();
      }

      throw AuthFailure.authGenericFailure(failedValue: e.code);
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter_auth_app/schema/prefs.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@module
abstract class RegisterModule {
  @preResolve
  @singleton
  Future<Isar> get isar => Isar.open([PrefsSchema]);

  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @singleton
  FirebaseDynamicLinks get firebaseDynamicLink => FirebaseDynamicLinks.instance;
}

import 'package:dartz/dartz.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/domain/models/user.dart' as model;
import 'package:flutter_auth_app/domain/models/user.dart';

abstract class IAuthRepository {
  User? get getUser;

  Future<Either<AuthFailure, model.User>> login({
    required String email,
    required String password,
  });

  Future<Either<AuthFailure, model.User>> register({
    required String password,
    required String email,
    required String displayName,
  });

  bool get isLoggedIn;
  bool? get emailIsVerified;

  Future<Either<AuthFailure, Unit>> logout();

  Future<Either<AuthFailure, Unit>> sendVerificationEmail();
}

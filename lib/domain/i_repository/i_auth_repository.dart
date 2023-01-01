import 'package:dartz/dartz.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/domain/models/user.dart';

abstract class IAuthRepository {
  Future<Either<UserInfo, Failure>> login({
    required String username,
    required String password,
  });

  Future<Either<Unit, Failure>> register({
    required String username,
    required String password,
    required String email,
  });
}

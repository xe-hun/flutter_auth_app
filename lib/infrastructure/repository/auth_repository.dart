import 'package:flutter_auth_app/domain/core/errors.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_auth_app/domain/i_repository/i_auth_repository.dart';
import 'package:flutter_auth_app/domain/models/user.dart' as model;
import 'package:flutter_auth_app/domain/models/user.dart';
import 'package:flutter_auth_app/infrastructure/datasource/remote_datasource.dart';
import 'package:flutter_auth_app/infrastructure/dto/user_dto.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  AuthRepository({required this.datasource});
  final RemoteDatasource datasource;

  @override
  Future<Either<AuthFailure, model.User>> login(
      {required String email, required String password}) async {
    try {
      final result = await datasource.login(
        email: email,
        password: password,
      );

      return Right(result.toUserModel());
    } on AuthFailure catch (e) {
      return Left(e);
    } catch (e) {
      throw AppError(
        actionDescription: 'exception on login handler',
        errorObject: e,
        classLocation: this,
      );
    }
  }

  @override
  Future<Either<AuthFailure, model.User>> register(
      {required String displayName,
      required String password,
      required String email}) async {
    try {
      final result = await datasource.register(
        email: email,
        password: password,
        displayName: displayName,
      );

      return Right(result.toUserModel());
    } on AuthFailure catch (e) {
      return Left(e);
    } catch (e) {
      throw AppError(
        actionDescription: 'exception on register handler',
        errorObject: e,
        classLocation: this,
      );
    }
  }

  @override
  bool get isLoggedIn => datasource.isLoggedIn;

  @override
  Future<Either<AuthFailure, Unit>> logout() async {
    try {
      await datasource.logout();

      return const Right(unit);
    } on AuthFailure catch (e) {
      return Left(e);
    } catch (e) {
      throw AppError(
        actionDescription: 'exception on logout handler',
        errorObject: e,
        classLocation: this,
      );
    }
  }

  @override
  User? get getUser => datasource.getUser != null
      ? UserDto.fromFirebaseUser(datasource.getUser!).toUserModel()
      : null;

  @override
  bool? get emailIsVerified => datasource.emailIsVerified;

  @override
  Future<Either<AuthFailure, Unit>> sendVerificationEmail() async {
    try {
      await datasource.sendEmailVerificationLink();
      return const Right(unit);
    } on AuthFailure catch (e) {
      return Left(e);
    } catch (e) {
      rethrow;
      throw AppError(
        actionDescription: 'exception on logout handler',
        errorObject: e,
        classLocation: this,
      );
    }
  }
}

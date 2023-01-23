import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_auth_app/domain/core/failures.dart';
import 'package:flutter_auth_app/domain/i_repository/i_auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_page_event.dart';
part 'auth_page_state.dart';
part 'auth_page_bloc.freezed.dart';

@injectable
class AuthPageBloc extends Bloc<AuthPageEvent, AuthPageState> {
  AuthPageBloc(this.authRepository) : super(const AuthPageState.initial()) {
    on<AuthPageEvent>((event, emit) async {
      await event.map(
        started: (e) {
          emit(const AuthPageState.display());
        },
        login: (e) async {
          emit(const AuthPageState.display(loading: true));
          (await authRepository.login(
                  email: emailTEC.text, password: passwordTEC.text))
              .fold(
            (l) {
              final errorMessage = _getErrorMessages(l);
              emit(AuthPageState.display(errorMessage: errorMessage));
            },
            (r) => e.onLogin(),
          );
        },
        register: (e) async {
          emit(const AuthPageState.display(loading: true));
          (await authRepository.register(
                  email: emailTEC.text,
                  password: passwordTEC.text,
                  displayName: displayNameTEC.text))
              .fold(
            (l) {
              final errorMessage = _getErrorMessages(l);
              emit(AuthPageState.display(errorMessage: errorMessage));
            },
            (r) async {
              e.onRegister();
              await authRepository.sendVerificationEmail();
            },
          );
        },
        logout: (e) async {
          (await authRepository.logout()).fold(
            (l) {
              final errorMessage = _getErrorMessages(l);
              emit(AuthPageState.display(errorMessage: errorMessage));
            },
            (r) => e.onLogout(),
          );
        },
        loginWithGoogle: (e) async {
          emit(const AuthPageState.display(loading: true));
          (await authRepository.loginWithGoogle()).fold(
            (l) {
              final errorMessage = _getErrorMessages(l);
              emit(AuthPageState.display(errorMessage: errorMessage));
            },
            (r) => e.onLogin(),
          );
        },
      );
    });
  }

  final IAuthRepository authRepository;

  final displayNameTEC = TextEditingController();
  final emailTEC = TextEditingController();
  final passwordTEC = TextEditingController();

  _getErrorMessages(AuthFailure l) {
    return l.whenOrNull(
      networkFailure: () => 'Network Error',
      accountAlreadyExist: (email) =>
          '$email has already been registered with another account',
      weekPassword: () => 'Password is too weak',
      authGenericFailure: (_) => 'An error occured',
      userNotFound: () => 'Wrong email or password',
      wrongPassword: () => 'Wrong email or password',
    );
  }
}

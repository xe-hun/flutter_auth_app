part of 'auth_page_bloc.dart';

@freezed
class AuthPageEvent with _$AuthPageEvent {
  const factory AuthPageEvent.started() = _Started;
  const factory AuthPageEvent.login({required void Function() onLogin}) =
      _Login;
  const factory AuthPageEvent.logout({required void Function() onLogout}) =
      _Logout;
  const factory AuthPageEvent.register({required void Function() onRegister}) =
      _Register;
}

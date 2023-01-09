part of 'email_verification_page_bloc.dart';

@freezed
class EmailVerificationPageEvent with _$EmailVerificationPageEvent {
  const factory EmailVerificationPageEvent.started() = _Started;
  const factory EmailVerificationPageEvent.logout(
      {required Function() onLogout}) = _Logout;
}

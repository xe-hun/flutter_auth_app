part of 'app_page_bloc.dart';

@freezed
class AppPageEvent with _$AppPageEvent {
  const factory AppPageEvent.started() = _Started;
  const factory AppPageEvent.logout({required Function() onLogout}) = _Logout;
}

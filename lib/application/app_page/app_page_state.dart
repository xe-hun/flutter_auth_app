part of 'app_page_bloc.dart';

@freezed
class AppPageState with _$AppPageState {
  const factory AppPageState.initial() = _Initial;
  const factory AppPageState.idle(
      {String? errorMessage,
      @Default(false) isLoading,
      required User userDetails}) = _Idle;
}

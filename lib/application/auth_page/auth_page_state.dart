part of 'auth_page_bloc.dart';

@freezed
class AuthPageState with _$AuthPageState {
  const factory AuthPageState.initial() = _Initial;
  const factory AuthPageState.display(
      {@Default(false) bool loading, String? errorMessage}) = _Display;
}

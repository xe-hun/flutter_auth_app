import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class UserInfo with _$UserInfo {
  const UserInfo._();

  const factory UserInfo({
    required String email,
    required String username,
    String? profilePic,
  }) = _UserInfo;
}

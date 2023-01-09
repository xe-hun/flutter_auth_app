import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_auth_app/domain/models/user.dart' as model;

part 'user_dto.freezed.dart';

@freezed
class UserDto with _$UserDto {
  const UserDto._();

  factory UserDto({
    required String displayName,
    required String email,
  }) = _UserDto;

  factory UserDto.fromFirebaseUser(firebase_auth.User user) {
    return UserDto(displayName: user.displayName!, email: user.email!);
  }

  model.User toUserModel() {
    return model.User(
      email: email,
      displayname: displayName,
    );
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();

  const factory User(
      {required String email,
      required String displayname,
      required String? imageUrl}) = _User;
}

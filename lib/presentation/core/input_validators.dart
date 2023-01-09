import 'package:dartz/dartz.dart';
import 'package:flutter_auth_app/presentation/core/failures/value_failures.dart';

Either<ValueFailure, String> _checkCorrectEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  }
  return left(const ValueFailure.invalidEmail());
}

Either<ValueFailure, String> _validateMinStringLength(
  String input, {
  required String label,
  required int min,
}) {
  if (input.length < min) {
    return left(ValueFailure.stringTooShort(label));
  }

  return right(input);
}

Either<ValueFailure, String> _validateStringIsEmpty(
  String input, {
  required String label,
}) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(label));
  }
  return right(input);
}

Either<ValueFailure, String> emailValidator(String input) =>
    _validateStringIsEmpty(input, label: 'email')
        .flatMap(
            (input) => _validateMinStringLength(input, label: 'email', min: 3))
        .flatMap((input) => _checkCorrectEmail(input));

Either<ValueFailure, String> displayNameValidator(String input) =>
    _validateStringIsEmpty(input, label: 'display name').flatMap((input) =>
        _validateMinStringLength(input, label: 'display name', min: 3));

Either<ValueFailure, String> passwordValidator(String input) =>
    _validateMinStringLength(input, label: 'password', min: 6);

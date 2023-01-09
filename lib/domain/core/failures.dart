import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class StorageFailure<T> with _$StorageFailure<T> {
  const factory StorageFailure.noItemInStorage() = _NoItemInStorage;
  const factory StorageFailure.storageGenericFailure({required T failedValue}) =
      _StorageGenericFailure;
}

@freezed
class AuthFailure<T> with _$AuthFailure<T> {
  const factory AuthFailure.networkFailure() = _NetworkFailure;
  const factory AuthFailure.weekPassword() = _WeekPassword;
  const factory AuthFailure.accountAlreadyExist(T email) =
      _AccountAlreadyExist<T>;
  const factory AuthFailure.userNotFound() = _UserNotFound;
  const factory AuthFailure.wrongPassword() = _WrongPassword;
  const factory AuthFailure.authGenericFailure({required T failedValue}) =
      _AuthGenericFailure;
}


//types of authFailure
// enum AuthFailureTypes {
//   weekPassword,
//   accountAlreadyExist,
//   userNotFound,
//   wrongPassword,
// }

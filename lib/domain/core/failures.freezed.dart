// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StorageFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noItemInStorage,
    required TResult Function(T failedValue) storageGenericFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noItemInStorage,
    TResult? Function(T failedValue)? storageGenericFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noItemInStorage,
    TResult Function(T failedValue)? storageGenericFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoItemInStorage<T> value) noItemInStorage,
    required TResult Function(_StorageGenericFailure<T> value)
        storageGenericFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoItemInStorage<T> value)? noItemInStorage,
    TResult? Function(_StorageGenericFailure<T> value)? storageGenericFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoItemInStorage<T> value)? noItemInStorage,
    TResult Function(_StorageGenericFailure<T> value)? storageGenericFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageFailureCopyWith<T, $Res> {
  factory $StorageFailureCopyWith(
          StorageFailure<T> value, $Res Function(StorageFailure<T>) then) =
      _$StorageFailureCopyWithImpl<T, $Res, StorageFailure<T>>;
}

/// @nodoc
class _$StorageFailureCopyWithImpl<T, $Res, $Val extends StorageFailure<T>>
    implements $StorageFailureCopyWith<T, $Res> {
  _$StorageFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NoItemInStorageCopyWith<T, $Res> {
  factory _$$_NoItemInStorageCopyWith(_$_NoItemInStorage<T> value,
          $Res Function(_$_NoItemInStorage<T>) then) =
      __$$_NoItemInStorageCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_NoItemInStorageCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res, _$_NoItemInStorage<T>>
    implements _$$_NoItemInStorageCopyWith<T, $Res> {
  __$$_NoItemInStorageCopyWithImpl(
      _$_NoItemInStorage<T> _value, $Res Function(_$_NoItemInStorage<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoItemInStorage<T> implements _NoItemInStorage<T> {
  const _$_NoItemInStorage();

  @override
  String toString() {
    return 'StorageFailure<$T>.noItemInStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoItemInStorage<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noItemInStorage,
    required TResult Function(T failedValue) storageGenericFailure,
  }) {
    return noItemInStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noItemInStorage,
    TResult? Function(T failedValue)? storageGenericFailure,
  }) {
    return noItemInStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noItemInStorage,
    TResult Function(T failedValue)? storageGenericFailure,
    required TResult orElse(),
  }) {
    if (noItemInStorage != null) {
      return noItemInStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoItemInStorage<T> value) noItemInStorage,
    required TResult Function(_StorageGenericFailure<T> value)
        storageGenericFailure,
  }) {
    return noItemInStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoItemInStorage<T> value)? noItemInStorage,
    TResult? Function(_StorageGenericFailure<T> value)? storageGenericFailure,
  }) {
    return noItemInStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoItemInStorage<T> value)? noItemInStorage,
    TResult Function(_StorageGenericFailure<T> value)? storageGenericFailure,
    required TResult orElse(),
  }) {
    if (noItemInStorage != null) {
      return noItemInStorage(this);
    }
    return orElse();
  }
}

abstract class _NoItemInStorage<T> implements StorageFailure<T> {
  const factory _NoItemInStorage() = _$_NoItemInStorage<T>;
}

/// @nodoc
abstract class _$$_StorageGenericFailureCopyWith<T, $Res> {
  factory _$$_StorageGenericFailureCopyWith(_$_StorageGenericFailure<T> value,
          $Res Function(_$_StorageGenericFailure<T>) then) =
      __$$_StorageGenericFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_StorageGenericFailureCopyWithImpl<T, $Res>
    extends _$StorageFailureCopyWithImpl<T, $Res, _$_StorageGenericFailure<T>>
    implements _$$_StorageGenericFailureCopyWith<T, $Res> {
  __$$_StorageGenericFailureCopyWithImpl(_$_StorageGenericFailure<T> _value,
      $Res Function(_$_StorageGenericFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_StorageGenericFailure<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_StorageGenericFailure<T> implements _StorageGenericFailure<T> {
  const _$_StorageGenericFailure({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'StorageFailure<$T>.storageGenericFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageGenericFailure<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageGenericFailureCopyWith<T, _$_StorageGenericFailure<T>>
      get copyWith => __$$_StorageGenericFailureCopyWithImpl<T,
          _$_StorageGenericFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noItemInStorage,
    required TResult Function(T failedValue) storageGenericFailure,
  }) {
    return storageGenericFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noItemInStorage,
    TResult? Function(T failedValue)? storageGenericFailure,
  }) {
    return storageGenericFailure?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noItemInStorage,
    TResult Function(T failedValue)? storageGenericFailure,
    required TResult orElse(),
  }) {
    if (storageGenericFailure != null) {
      return storageGenericFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoItemInStorage<T> value) noItemInStorage,
    required TResult Function(_StorageGenericFailure<T> value)
        storageGenericFailure,
  }) {
    return storageGenericFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoItemInStorage<T> value)? noItemInStorage,
    TResult? Function(_StorageGenericFailure<T> value)? storageGenericFailure,
  }) {
    return storageGenericFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoItemInStorage<T> value)? noItemInStorage,
    TResult Function(_StorageGenericFailure<T> value)? storageGenericFailure,
    required TResult orElse(),
  }) {
    if (storageGenericFailure != null) {
      return storageGenericFailure(this);
    }
    return orElse();
  }
}

abstract class _StorageGenericFailure<T> implements StorageFailure<T> {
  const factory _StorageGenericFailure({required final T failedValue}) =
      _$_StorageGenericFailure<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$$_StorageGenericFailureCopyWith<T, _$_StorageGenericFailure<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() weekPassword,
    required TResult Function(T email) accountAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function(T failedValue) authGenericFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? weekPassword,
    TResult? Function(T email)? accountAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function(T failedValue)? authGenericFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? weekPassword,
    TResult Function(T email)? accountAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function(T failedValue)? authGenericFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure<T> value) networkFailure,
    required TResult Function(_WeekPassword<T> value) weekPassword,
    required TResult Function(_AccountAlreadyExist<T> value)
        accountAlreadyExist,
    required TResult Function(_UserNotFound<T> value) userNotFound,
    required TResult Function(_WrongPassword<T> value) wrongPassword,
    required TResult Function(_AuthGenericFailure<T> value) authGenericFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure<T> value)? networkFailure,
    TResult? Function(_WeekPassword<T> value)? weekPassword,
    TResult? Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult? Function(_UserNotFound<T> value)? userNotFound,
    TResult? Function(_WrongPassword<T> value)? wrongPassword,
    TResult? Function(_AuthGenericFailure<T> value)? authGenericFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure<T> value)? networkFailure,
    TResult Function(_WeekPassword<T> value)? weekPassword,
    TResult Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult Function(_UserNotFound<T> value)? userNotFound,
    TResult Function(_WrongPassword<T> value)? wrongPassword,
    TResult Function(_AuthGenericFailure<T> value)? authGenericFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<T, $Res> {
  factory $AuthFailureCopyWith(
          AuthFailure<T> value, $Res Function(AuthFailure<T>) then) =
      _$AuthFailureCopyWithImpl<T, $Res, AuthFailure<T>>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<T, $Res, $Val extends AuthFailure<T>>
    implements $AuthFailureCopyWith<T, $Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NetworkFailureCopyWith<T, $Res> {
  factory _$$_NetworkFailureCopyWith(_$_NetworkFailure<T> value,
          $Res Function(_$_NetworkFailure<T>) then) =
      __$$_NetworkFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_NetworkFailureCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$_NetworkFailure<T>>
    implements _$$_NetworkFailureCopyWith<T, $Res> {
  __$$_NetworkFailureCopyWithImpl(
      _$_NetworkFailure<T> _value, $Res Function(_$_NetworkFailure<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkFailure<T> implements _NetworkFailure<T> {
  const _$_NetworkFailure();

  @override
  String toString() {
    return 'AuthFailure<$T>.networkFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkFailure<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() weekPassword,
    required TResult Function(T email) accountAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function(T failedValue) authGenericFailure,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? weekPassword,
    TResult? Function(T email)? accountAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function(T failedValue)? authGenericFailure,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? weekPassword,
    TResult Function(T email)? accountAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function(T failedValue)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure<T> value) networkFailure,
    required TResult Function(_WeekPassword<T> value) weekPassword,
    required TResult Function(_AccountAlreadyExist<T> value)
        accountAlreadyExist,
    required TResult Function(_UserNotFound<T> value) userNotFound,
    required TResult Function(_WrongPassword<T> value) wrongPassword,
    required TResult Function(_AuthGenericFailure<T> value) authGenericFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure<T> value)? networkFailure,
    TResult? Function(_WeekPassword<T> value)? weekPassword,
    TResult? Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult? Function(_UserNotFound<T> value)? userNotFound,
    TResult? Function(_WrongPassword<T> value)? wrongPassword,
    TResult? Function(_AuthGenericFailure<T> value)? authGenericFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure<T> value)? networkFailure,
    TResult Function(_WeekPassword<T> value)? weekPassword,
    TResult Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult Function(_UserNotFound<T> value)? userNotFound,
    TResult Function(_WrongPassword<T> value)? wrongPassword,
    TResult Function(_AuthGenericFailure<T> value)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure<T> implements AuthFailure<T> {
  const factory _NetworkFailure() = _$_NetworkFailure<T>;
}

/// @nodoc
abstract class _$$_WeekPasswordCopyWith<T, $Res> {
  factory _$$_WeekPasswordCopyWith(
          _$_WeekPassword<T> value, $Res Function(_$_WeekPassword<T>) then) =
      __$$_WeekPasswordCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_WeekPasswordCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$_WeekPassword<T>>
    implements _$$_WeekPasswordCopyWith<T, $Res> {
  __$$_WeekPasswordCopyWithImpl(
      _$_WeekPassword<T> _value, $Res Function(_$_WeekPassword<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WeekPassword<T> implements _WeekPassword<T> {
  const _$_WeekPassword();

  @override
  String toString() {
    return 'AuthFailure<$T>.weekPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WeekPassword<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() weekPassword,
    required TResult Function(T email) accountAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function(T failedValue) authGenericFailure,
  }) {
    return weekPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? weekPassword,
    TResult? Function(T email)? accountAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function(T failedValue)? authGenericFailure,
  }) {
    return weekPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? weekPassword,
    TResult Function(T email)? accountAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function(T failedValue)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (weekPassword != null) {
      return weekPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure<T> value) networkFailure,
    required TResult Function(_WeekPassword<T> value) weekPassword,
    required TResult Function(_AccountAlreadyExist<T> value)
        accountAlreadyExist,
    required TResult Function(_UserNotFound<T> value) userNotFound,
    required TResult Function(_WrongPassword<T> value) wrongPassword,
    required TResult Function(_AuthGenericFailure<T> value) authGenericFailure,
  }) {
    return weekPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure<T> value)? networkFailure,
    TResult? Function(_WeekPassword<T> value)? weekPassword,
    TResult? Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult? Function(_UserNotFound<T> value)? userNotFound,
    TResult? Function(_WrongPassword<T> value)? wrongPassword,
    TResult? Function(_AuthGenericFailure<T> value)? authGenericFailure,
  }) {
    return weekPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure<T> value)? networkFailure,
    TResult Function(_WeekPassword<T> value)? weekPassword,
    TResult Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult Function(_UserNotFound<T> value)? userNotFound,
    TResult Function(_WrongPassword<T> value)? wrongPassword,
    TResult Function(_AuthGenericFailure<T> value)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (weekPassword != null) {
      return weekPassword(this);
    }
    return orElse();
  }
}

abstract class _WeekPassword<T> implements AuthFailure<T> {
  const factory _WeekPassword() = _$_WeekPassword<T>;
}

/// @nodoc
abstract class _$$_AccountAlreadyExistCopyWith<T, $Res> {
  factory _$$_AccountAlreadyExistCopyWith(_$_AccountAlreadyExist<T> value,
          $Res Function(_$_AccountAlreadyExist<T>) then) =
      __$$_AccountAlreadyExistCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T email});
}

/// @nodoc
class __$$_AccountAlreadyExistCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$_AccountAlreadyExist<T>>
    implements _$$_AccountAlreadyExistCopyWith<T, $Res> {
  __$$_AccountAlreadyExistCopyWithImpl(_$_AccountAlreadyExist<T> _value,
      $Res Function(_$_AccountAlreadyExist<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_AccountAlreadyExist<T>(
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_AccountAlreadyExist<T> implements _AccountAlreadyExist<T> {
  const _$_AccountAlreadyExist(this.email);

  @override
  final T email;

  @override
  String toString() {
    return 'AuthFailure<$T>.accountAlreadyExist(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountAlreadyExist<T> &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountAlreadyExistCopyWith<T, _$_AccountAlreadyExist<T>> get copyWith =>
      __$$_AccountAlreadyExistCopyWithImpl<T, _$_AccountAlreadyExist<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() weekPassword,
    required TResult Function(T email) accountAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function(T failedValue) authGenericFailure,
  }) {
    return accountAlreadyExist(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? weekPassword,
    TResult? Function(T email)? accountAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function(T failedValue)? authGenericFailure,
  }) {
    return accountAlreadyExist?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? weekPassword,
    TResult Function(T email)? accountAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function(T failedValue)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (accountAlreadyExist != null) {
      return accountAlreadyExist(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure<T> value) networkFailure,
    required TResult Function(_WeekPassword<T> value) weekPassword,
    required TResult Function(_AccountAlreadyExist<T> value)
        accountAlreadyExist,
    required TResult Function(_UserNotFound<T> value) userNotFound,
    required TResult Function(_WrongPassword<T> value) wrongPassword,
    required TResult Function(_AuthGenericFailure<T> value) authGenericFailure,
  }) {
    return accountAlreadyExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure<T> value)? networkFailure,
    TResult? Function(_WeekPassword<T> value)? weekPassword,
    TResult? Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult? Function(_UserNotFound<T> value)? userNotFound,
    TResult? Function(_WrongPassword<T> value)? wrongPassword,
    TResult? Function(_AuthGenericFailure<T> value)? authGenericFailure,
  }) {
    return accountAlreadyExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure<T> value)? networkFailure,
    TResult Function(_WeekPassword<T> value)? weekPassword,
    TResult Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult Function(_UserNotFound<T> value)? userNotFound,
    TResult Function(_WrongPassword<T> value)? wrongPassword,
    TResult Function(_AuthGenericFailure<T> value)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (accountAlreadyExist != null) {
      return accountAlreadyExist(this);
    }
    return orElse();
  }
}

abstract class _AccountAlreadyExist<T> implements AuthFailure<T> {
  const factory _AccountAlreadyExist(final T email) = _$_AccountAlreadyExist<T>;

  T get email;
  @JsonKey(ignore: true)
  _$$_AccountAlreadyExistCopyWith<T, _$_AccountAlreadyExist<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserNotFoundCopyWith<T, $Res> {
  factory _$$_UserNotFoundCopyWith(
          _$_UserNotFound<T> value, $Res Function(_$_UserNotFound<T>) then) =
      __$$_UserNotFoundCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_UserNotFoundCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$_UserNotFound<T>>
    implements _$$_UserNotFoundCopyWith<T, $Res> {
  __$$_UserNotFoundCopyWithImpl(
      _$_UserNotFound<T> _value, $Res Function(_$_UserNotFound<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserNotFound<T> implements _UserNotFound<T> {
  const _$_UserNotFound();

  @override
  String toString() {
    return 'AuthFailure<$T>.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserNotFound<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() weekPassword,
    required TResult Function(T email) accountAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function(T failedValue) authGenericFailure,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? weekPassword,
    TResult? Function(T email)? accountAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function(T failedValue)? authGenericFailure,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? weekPassword,
    TResult Function(T email)? accountAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function(T failedValue)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure<T> value) networkFailure,
    required TResult Function(_WeekPassword<T> value) weekPassword,
    required TResult Function(_AccountAlreadyExist<T> value)
        accountAlreadyExist,
    required TResult Function(_UserNotFound<T> value) userNotFound,
    required TResult Function(_WrongPassword<T> value) wrongPassword,
    required TResult Function(_AuthGenericFailure<T> value) authGenericFailure,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure<T> value)? networkFailure,
    TResult? Function(_WeekPassword<T> value)? weekPassword,
    TResult? Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult? Function(_UserNotFound<T> value)? userNotFound,
    TResult? Function(_WrongPassword<T> value)? wrongPassword,
    TResult? Function(_AuthGenericFailure<T> value)? authGenericFailure,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure<T> value)? networkFailure,
    TResult Function(_WeekPassword<T> value)? weekPassword,
    TResult Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult Function(_UserNotFound<T> value)? userNotFound,
    TResult Function(_WrongPassword<T> value)? wrongPassword,
    TResult Function(_AuthGenericFailure<T> value)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound<T> implements AuthFailure<T> {
  const factory _UserNotFound() = _$_UserNotFound<T>;
}

/// @nodoc
abstract class _$$_WrongPasswordCopyWith<T, $Res> {
  factory _$$_WrongPasswordCopyWith(
          _$_WrongPassword<T> value, $Res Function(_$_WrongPassword<T>) then) =
      __$$_WrongPasswordCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_WrongPasswordCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$_WrongPassword<T>>
    implements _$$_WrongPasswordCopyWith<T, $Res> {
  __$$_WrongPasswordCopyWithImpl(
      _$_WrongPassword<T> _value, $Res Function(_$_WrongPassword<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WrongPassword<T> implements _WrongPassword<T> {
  const _$_WrongPassword();

  @override
  String toString() {
    return 'AuthFailure<$T>.wrongPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WrongPassword<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() weekPassword,
    required TResult Function(T email) accountAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function(T failedValue) authGenericFailure,
  }) {
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? weekPassword,
    TResult? Function(T email)? accountAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function(T failedValue)? authGenericFailure,
  }) {
    return wrongPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? weekPassword,
    TResult Function(T email)? accountAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function(T failedValue)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure<T> value) networkFailure,
    required TResult Function(_WeekPassword<T> value) weekPassword,
    required TResult Function(_AccountAlreadyExist<T> value)
        accountAlreadyExist,
    required TResult Function(_UserNotFound<T> value) userNotFound,
    required TResult Function(_WrongPassword<T> value) wrongPassword,
    required TResult Function(_AuthGenericFailure<T> value) authGenericFailure,
  }) {
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure<T> value)? networkFailure,
    TResult? Function(_WeekPassword<T> value)? weekPassword,
    TResult? Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult? Function(_UserNotFound<T> value)? userNotFound,
    TResult? Function(_WrongPassword<T> value)? wrongPassword,
    TResult? Function(_AuthGenericFailure<T> value)? authGenericFailure,
  }) {
    return wrongPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure<T> value)? networkFailure,
    TResult Function(_WeekPassword<T> value)? weekPassword,
    TResult Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult Function(_UserNotFound<T> value)? userNotFound,
    TResult Function(_WrongPassword<T> value)? wrongPassword,
    TResult Function(_AuthGenericFailure<T> value)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class _WrongPassword<T> implements AuthFailure<T> {
  const factory _WrongPassword() = _$_WrongPassword<T>;
}

/// @nodoc
abstract class _$$_AuthGenericFailureCopyWith<T, $Res> {
  factory _$$_AuthGenericFailureCopyWith(_$_AuthGenericFailure<T> value,
          $Res Function(_$_AuthGenericFailure<T>) then) =
      __$$_AuthGenericFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$_AuthGenericFailureCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res, _$_AuthGenericFailure<T>>
    implements _$$_AuthGenericFailureCopyWith<T, $Res> {
  __$$_AuthGenericFailureCopyWithImpl(_$_AuthGenericFailure<T> _value,
      $Res Function(_$_AuthGenericFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$_AuthGenericFailure<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_AuthGenericFailure<T> implements _AuthGenericFailure<T> {
  const _$_AuthGenericFailure({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthFailure<$T>.authGenericFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthGenericFailure<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthGenericFailureCopyWith<T, _$_AuthGenericFailure<T>> get copyWith =>
      __$$_AuthGenericFailureCopyWithImpl<T, _$_AuthGenericFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkFailure,
    required TResult Function() weekPassword,
    required TResult Function(T email) accountAlreadyExist,
    required TResult Function() userNotFound,
    required TResult Function() wrongPassword,
    required TResult Function(T failedValue) authGenericFailure,
  }) {
    return authGenericFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkFailure,
    TResult? Function()? weekPassword,
    TResult? Function(T email)? accountAlreadyExist,
    TResult? Function()? userNotFound,
    TResult? Function()? wrongPassword,
    TResult? Function(T failedValue)? authGenericFailure,
  }) {
    return authGenericFailure?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkFailure,
    TResult Function()? weekPassword,
    TResult Function(T email)? accountAlreadyExist,
    TResult Function()? userNotFound,
    TResult Function()? wrongPassword,
    TResult Function(T failedValue)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (authGenericFailure != null) {
      return authGenericFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkFailure<T> value) networkFailure,
    required TResult Function(_WeekPassword<T> value) weekPassword,
    required TResult Function(_AccountAlreadyExist<T> value)
        accountAlreadyExist,
    required TResult Function(_UserNotFound<T> value) userNotFound,
    required TResult Function(_WrongPassword<T> value) wrongPassword,
    required TResult Function(_AuthGenericFailure<T> value) authGenericFailure,
  }) {
    return authGenericFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkFailure<T> value)? networkFailure,
    TResult? Function(_WeekPassword<T> value)? weekPassword,
    TResult? Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult? Function(_UserNotFound<T> value)? userNotFound,
    TResult? Function(_WrongPassword<T> value)? wrongPassword,
    TResult? Function(_AuthGenericFailure<T> value)? authGenericFailure,
  }) {
    return authGenericFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkFailure<T> value)? networkFailure,
    TResult Function(_WeekPassword<T> value)? weekPassword,
    TResult Function(_AccountAlreadyExist<T> value)? accountAlreadyExist,
    TResult Function(_UserNotFound<T> value)? userNotFound,
    TResult Function(_WrongPassword<T> value)? wrongPassword,
    TResult Function(_AuthGenericFailure<T> value)? authGenericFailure,
    required TResult orElse(),
  }) {
    if (authGenericFailure != null) {
      return authGenericFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthGenericFailure<T> implements AuthFailure<T> {
  const factory _AuthGenericFailure({required final T failedValue}) =
      _$_AuthGenericFailure<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$$_AuthGenericFailureCopyWith<T, _$_AuthGenericFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

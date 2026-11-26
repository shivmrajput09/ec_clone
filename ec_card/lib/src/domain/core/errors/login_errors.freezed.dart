// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginErrors {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorsCopyWith<$Res> {
  factory $LoginErrorsCopyWith(
          LoginErrors value, $Res Function(LoginErrors) then) =
      _$LoginErrorsCopyWithImpl<$Res, LoginErrors>;
}

/// @nodoc
class _$LoginErrorsCopyWithImpl<$Res, $Val extends LoginErrors>
    implements $LoginErrorsCopyWith<$Res> {
  _$LoginErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserNotFoundImplCopyWith<$Res> {
  factory _$$UserNotFoundImplCopyWith(
          _$UserNotFoundImpl value, $Res Function(_$UserNotFoundImpl) then) =
      __$$UserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundImplCopyWithImpl<$Res>
    extends _$LoginErrorsCopyWithImpl<$Res, _$UserNotFoundImpl>
    implements _$$UserNotFoundImplCopyWith<$Res> {
  __$$UserNotFoundImplCopyWithImpl(
      _$UserNotFoundImpl _value, $Res Function(_$UserNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotFoundImpl implements UserNotFound {
  const _$UserNotFoundImpl();

  @override
  String toString() {
    return 'LoginErrors.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
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
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements LoginErrors {
  const factory UserNotFound() = _$UserNotFoundImpl;
}

/// @nodoc
abstract class _$$UserDisabledImplCopyWith<$Res> {
  factory _$$UserDisabledImplCopyWith(
          _$UserDisabledImpl value, $Res Function(_$UserDisabledImpl) then) =
      __$$UserDisabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDisabledImplCopyWithImpl<$Res>
    extends _$LoginErrorsCopyWithImpl<$Res, _$UserDisabledImpl>
    implements _$$UserDisabledImplCopyWith<$Res> {
  __$$UserDisabledImplCopyWithImpl(
      _$UserDisabledImpl _value, $Res Function(_$UserDisabledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDisabledImpl implements UserDisabled {
  const _$UserDisabledImpl();

  @override
  String toString() {
    return 'LoginErrors.userDisabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDisabledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) {
    return userDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) {
    return userDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return userDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class UserDisabled implements LoginErrors {
  const factory UserDisabled() = _$UserDisabledImpl;
}

/// @nodoc
abstract class _$$MissingPhoneNumberImplCopyWith<$Res> {
  factory _$$MissingPhoneNumberImplCopyWith(_$MissingPhoneNumberImpl value,
          $Res Function(_$MissingPhoneNumberImpl) then) =
      __$$MissingPhoneNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MissingPhoneNumberImplCopyWithImpl<$Res>
    extends _$LoginErrorsCopyWithImpl<$Res, _$MissingPhoneNumberImpl>
    implements _$$MissingPhoneNumberImplCopyWith<$Res> {
  __$$MissingPhoneNumberImplCopyWithImpl(_$MissingPhoneNumberImpl _value,
      $Res Function(_$MissingPhoneNumberImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MissingPhoneNumberImpl implements MissingPhoneNumber {
  const _$MissingPhoneNumberImpl();

  @override
  String toString() {
    return 'LoginErrors.missingPhoneNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MissingPhoneNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) {
    return missingPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) {
    return missingPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
    required TResult orElse(),
  }) {
    if (missingPhoneNumber != null) {
      return missingPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return missingPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return missingPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (missingPhoneNumber != null) {
      return missingPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class MissingPhoneNumber implements LoginErrors {
  const factory MissingPhoneNumber() = _$MissingPhoneNumberImpl;
}

/// @nodoc
abstract class _$$InvalidPhoneNumberImplCopyWith<$Res> {
  factory _$$InvalidPhoneNumberImplCopyWith(_$InvalidPhoneNumberImpl value,
          $Res Function(_$InvalidPhoneNumberImpl) then) =
      __$$InvalidPhoneNumberImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidPhoneNumberImplCopyWithImpl<$Res>
    extends _$LoginErrorsCopyWithImpl<$Res, _$InvalidPhoneNumberImpl>
    implements _$$InvalidPhoneNumberImplCopyWith<$Res> {
  __$$InvalidPhoneNumberImplCopyWithImpl(_$InvalidPhoneNumberImpl _value,
      $Res Function(_$InvalidPhoneNumberImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidPhoneNumberImpl implements InvalidPhoneNumber {
  const _$InvalidPhoneNumberImpl();

  @override
  String toString() {
    return 'LoginErrors.invalidPhoneNumber()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidPhoneNumberImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) {
    return invalidPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) {
    return invalidPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber implements LoginErrors {
  const factory InvalidPhoneNumber() = _$InvalidPhoneNumberImpl;
}

/// @nodoc
abstract class _$$MissingVerificationCodeImplCopyWith<$Res> {
  factory _$$MissingVerificationCodeImplCopyWith(
          _$MissingVerificationCodeImpl value,
          $Res Function(_$MissingVerificationCodeImpl) then) =
      __$$MissingVerificationCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MissingVerificationCodeImplCopyWithImpl<$Res>
    extends _$LoginErrorsCopyWithImpl<$Res, _$MissingVerificationCodeImpl>
    implements _$$MissingVerificationCodeImplCopyWith<$Res> {
  __$$MissingVerificationCodeImplCopyWithImpl(
      _$MissingVerificationCodeImpl _value,
      $Res Function(_$MissingVerificationCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MissingVerificationCodeImpl implements MissingVerificationCode {
  const _$MissingVerificationCodeImpl();

  @override
  String toString() {
    return 'LoginErrors.missingVerificationCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissingVerificationCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) {
    return missingVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) {
    return missingVerificationCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
    required TResult orElse(),
  }) {
    if (missingVerificationCode != null) {
      return missingVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return missingVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return missingVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (missingVerificationCode != null) {
      return missingVerificationCode(this);
    }
    return orElse();
  }
}

abstract class MissingVerificationCode implements LoginErrors {
  const factory MissingVerificationCode() = _$MissingVerificationCodeImpl;
}

/// @nodoc
abstract class _$$InvalidVerificationCodeImplCopyWith<$Res> {
  factory _$$InvalidVerificationCodeImplCopyWith(
          _$InvalidVerificationCodeImpl value,
          $Res Function(_$InvalidVerificationCodeImpl) then) =
      __$$InvalidVerificationCodeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidVerificationCodeImplCopyWithImpl<$Res>
    extends _$LoginErrorsCopyWithImpl<$Res, _$InvalidVerificationCodeImpl>
    implements _$$InvalidVerificationCodeImplCopyWith<$Res> {
  __$$InvalidVerificationCodeImplCopyWithImpl(
      _$InvalidVerificationCodeImpl _value,
      $Res Function(_$InvalidVerificationCodeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidVerificationCodeImpl implements InvalidVerificationCode {
  const _$InvalidVerificationCodeImpl();

  @override
  String toString() {
    return 'LoginErrors.invalidVerificationCode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidVerificationCodeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) {
    return invalidVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) {
    return invalidVerificationCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
    required TResult orElse(),
  }) {
    if (invalidVerificationCode != null) {
      return invalidVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return invalidVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return invalidVerificationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (invalidVerificationCode != null) {
      return invalidVerificationCode(this);
    }
    return orElse();
  }
}

abstract class InvalidVerificationCode implements LoginErrors {
  const factory InvalidVerificationCode() = _$InvalidVerificationCodeImpl;
}

/// @nodoc
abstract class _$$CodeExpiredImplCopyWith<$Res> {
  factory _$$CodeExpiredImplCopyWith(
          _$CodeExpiredImpl value, $Res Function(_$CodeExpiredImpl) then) =
      __$$CodeExpiredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeExpiredImplCopyWithImpl<$Res>
    extends _$LoginErrorsCopyWithImpl<$Res, _$CodeExpiredImpl>
    implements _$$CodeExpiredImplCopyWith<$Res> {
  __$$CodeExpiredImplCopyWithImpl(
      _$CodeExpiredImpl _value, $Res Function(_$CodeExpiredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CodeExpiredImpl implements CodeExpired {
  const _$CodeExpiredImpl();

  @override
  String toString() {
    return 'LoginErrors.codeExpired()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CodeExpiredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) {
    return codeExpired();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) {
    return codeExpired?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
    required TResult orElse(),
  }) {
    if (codeExpired != null) {
      return codeExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return codeExpired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return codeExpired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (codeExpired != null) {
      return codeExpired(this);
    }
    return orElse();
  }
}

abstract class CodeExpired implements LoginErrors {
  const factory CodeExpired() = _$CodeExpiredImpl;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(
          _$UnknownErrorImpl value, $Res Function(_$UnknownErrorImpl) then) =
      __$$UnknownErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res>
    extends _$LoginErrorsCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(
      _$UnknownErrorImpl _value, $Res Function(_$UnknownErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$UnknownErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownErrorImpl implements UnknownError {
  const _$UnknownErrorImpl({required this.code, required this.message});

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'LoginErrors.unknownError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      __$$UnknownErrorImplCopyWithImpl<_$UnknownErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userNotFound,
    required TResult Function() userDisabled,
    required TResult Function() missingPhoneNumber,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() missingVerificationCode,
    required TResult Function() invalidVerificationCode,
    required TResult Function() codeExpired,
    required TResult Function(String code, String message) unknownError,
  }) {
    return unknownError(code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userNotFound,
    TResult? Function()? userDisabled,
    TResult? Function()? missingPhoneNumber,
    TResult? Function()? invalidPhoneNumber,
    TResult? Function()? missingVerificationCode,
    TResult? Function()? invalidVerificationCode,
    TResult? Function()? codeExpired,
    TResult? Function(String code, String message)? unknownError,
  }) {
    return unknownError?.call(code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userNotFound,
    TResult Function()? userDisabled,
    TResult Function()? missingPhoneNumber,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? missingVerificationCode,
    TResult Function()? invalidVerificationCode,
    TResult Function()? codeExpired,
    TResult Function(String code, String message)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(UserDisabled value) userDisabled,
    required TResult Function(MissingPhoneNumber value) missingPhoneNumber,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(MissingVerificationCode value)
        missingVerificationCode,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(CodeExpired value) codeExpired,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(UserDisabled value)? userDisabled,
    TResult? Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult? Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult? Function(MissingVerificationCode value)? missingVerificationCode,
    TResult? Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult? Function(CodeExpired value)? codeExpired,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(UserDisabled value)? userDisabled,
    TResult Function(MissingPhoneNumber value)? missingPhoneNumber,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(MissingVerificationCode value)? missingVerificationCode,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(CodeExpired value)? codeExpired,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements LoginErrors {
  const factory UnknownError(
      {required final String code,
      required final String message}) = _$UnknownErrorImpl;

  String get code;
  String get message;
  @JsonKey(ignore: true)
  _$$UnknownErrorImplCopyWith<_$UnknownErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

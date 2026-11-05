// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginErrors {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginErrors);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginErrors()';
  }
}

/// @nodoc
class $LoginErrorsCopyWith<$Res> {
  $LoginErrorsCopyWith(LoginErrors _, $Res Function(LoginErrors) __);
}

/// Adds pattern-matching-related methods to [LoginErrors].
extension LoginErrorsPatterns on LoginErrors {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case UserNotFound() when userNotFound != null:
        return userNotFound(_that);
      case UserDisabled() when userDisabled != null:
        return userDisabled(_that);
      case MissingPhoneNumber() when missingPhoneNumber != null:
        return missingPhoneNumber(_that);
      case InvalidPhoneNumber() when invalidPhoneNumber != null:
        return invalidPhoneNumber(_that);
      case MissingVerificationCode() when missingVerificationCode != null:
        return missingVerificationCode(_that);
      case InvalidVerificationCode() when invalidVerificationCode != null:
        return invalidVerificationCode(_that);
      case CodeExpired() when codeExpired != null:
        return codeExpired(_that);
      case UnknownError() when unknownError != null:
        return unknownError(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case UserNotFound():
        return userNotFound(_that);
      case UserDisabled():
        return userDisabled(_that);
      case MissingPhoneNumber():
        return missingPhoneNumber(_that);
      case InvalidPhoneNumber():
        return invalidPhoneNumber(_that);
      case MissingVerificationCode():
        return missingVerificationCode(_that);
      case InvalidVerificationCode():
        return invalidVerificationCode(_that);
      case CodeExpired():
        return codeExpired(_that);
      case UnknownError():
        return unknownError(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case UserNotFound() when userNotFound != null:
        return userNotFound(_that);
      case UserDisabled() when userDisabled != null:
        return userDisabled(_that);
      case MissingPhoneNumber() when missingPhoneNumber != null:
        return missingPhoneNumber(_that);
      case InvalidPhoneNumber() when invalidPhoneNumber != null:
        return invalidPhoneNumber(_that);
      case MissingVerificationCode() when missingVerificationCode != null:
        return missingVerificationCode(_that);
      case InvalidVerificationCode() when invalidVerificationCode != null:
        return invalidVerificationCode(_that);
      case CodeExpired() when codeExpired != null:
        return codeExpired(_that);
      case UnknownError() when unknownError != null:
        return unknownError(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case UserNotFound() when userNotFound != null:
        return userNotFound();
      case UserDisabled() when userDisabled != null:
        return userDisabled();
      case MissingPhoneNumber() when missingPhoneNumber != null:
        return missingPhoneNumber();
      case InvalidPhoneNumber() when invalidPhoneNumber != null:
        return invalidPhoneNumber();
      case MissingVerificationCode() when missingVerificationCode != null:
        return missingVerificationCode();
      case InvalidVerificationCode() when invalidVerificationCode != null:
        return invalidVerificationCode();
      case CodeExpired() when codeExpired != null:
        return codeExpired();
      case UnknownError() when unknownError != null:
        return unknownError(_that.code, _that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case UserNotFound():
        return userNotFound();
      case UserDisabled():
        return userDisabled();
      case MissingPhoneNumber():
        return missingPhoneNumber();
      case InvalidPhoneNumber():
        return invalidPhoneNumber();
      case MissingVerificationCode():
        return missingVerificationCode();
      case InvalidVerificationCode():
        return invalidVerificationCode();
      case CodeExpired():
        return codeExpired();
      case UnknownError():
        return unknownError(_that.code, _that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    final _that = this;
    switch (_that) {
      case UserNotFound() when userNotFound != null:
        return userNotFound();
      case UserDisabled() when userDisabled != null:
        return userDisabled();
      case MissingPhoneNumber() when missingPhoneNumber != null:
        return missingPhoneNumber();
      case InvalidPhoneNumber() when invalidPhoneNumber != null:
        return invalidPhoneNumber();
      case MissingVerificationCode() when missingVerificationCode != null:
        return missingVerificationCode();
      case InvalidVerificationCode() when invalidVerificationCode != null:
        return invalidVerificationCode();
      case CodeExpired() when codeExpired != null:
        return codeExpired();
      case UnknownError() when unknownError != null:
        return unknownError(_that.code, _that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class UserNotFound implements LoginErrors {
  const UserNotFound();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginErrors.userNotFound()';
  }
}

/// @nodoc

class UserDisabled implements LoginErrors {
  const UserDisabled();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDisabled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginErrors.userDisabled()';
  }
}

/// @nodoc

class MissingPhoneNumber implements LoginErrors {
  const MissingPhoneNumber();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MissingPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginErrors.missingPhoneNumber()';
  }
}

/// @nodoc

class InvalidPhoneNumber implements LoginErrors {
  const InvalidPhoneNumber();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InvalidPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginErrors.invalidPhoneNumber()';
  }
}

/// @nodoc

class MissingVerificationCode implements LoginErrors {
  const MissingVerificationCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MissingVerificationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginErrors.missingVerificationCode()';
  }
}

/// @nodoc

class InvalidVerificationCode implements LoginErrors {
  const InvalidVerificationCode();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InvalidVerificationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginErrors.invalidVerificationCode()';
  }
}

/// @nodoc

class CodeExpired implements LoginErrors {
  const CodeExpired();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CodeExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginErrors.codeExpired()';
  }
}

/// @nodoc

class UnknownError implements LoginErrors {
  const UnknownError({required this.code, required this.message});

  final String code;
  final String message;

  /// Create a copy of LoginErrors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UnknownErrorCopyWith<UnknownError> get copyWith =>
      _$UnknownErrorCopyWithImpl<UnknownError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnknownError &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, code, message);
  }

  @override
  String toString() {
    return 'LoginErrors.unknownError(code: $code, message: $message)';
  }
}

/// @nodoc
abstract mixin class $UnknownErrorCopyWith<$Res>
    implements $LoginErrorsCopyWith<$Res> {
  factory $UnknownErrorCopyWith(
          UnknownError value, $Res Function(UnknownError) _then) =
      _$UnknownErrorCopyWithImpl;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res> implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(this._self, this._then);

  final UnknownError _self;
  final $Res Function(UnknownError) _then;

  /// Create a copy of LoginErrors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
    Object? message = null,
  }) {
    return _then(UnknownError(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

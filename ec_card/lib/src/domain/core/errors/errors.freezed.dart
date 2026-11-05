// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppErrors {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AppErrors);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors()';
  }
}

/// @nodoc
class $AppErrorsCopyWith<$Res> {
  $AppErrorsCopyWith(AppErrors _, $Res Function(AppErrors) __);
}

/// Adds pattern-matching-related methods to [AppErrors].
extension AppErrorsPatterns on AppErrors {
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
    TResult Function(NotFound value)? notFound,
    TResult Function(RequestTimeout value)? requestTimeout,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(DefaultError value)? defaultError,
    TResult Function(UnexpectedError value)? unexpectedError,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(AuthErrors value)? authErrors,
    TResult Function(PayloadTooLarge value)? payloadTooLarge,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(ServerError value)? serverError,
    TResult Function(ServiceUnavailable value)? serviceUnavailable,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NotFound() when notFound != null:
        return notFound(_that);
      case RequestTimeout() when requestTimeout != null:
        return requestTimeout(_that);
      case NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection(_that);
      case DefaultError() when defaultError != null:
        return defaultError(_that);
      case UnexpectedError() when unexpectedError != null:
        return unexpectedError(_that);
      case PermissionDenied() when permissionDenied != null:
        return permissionDenied(_that);
      case AuthErrors() when authErrors != null:
        return authErrors(_that);
      case PayloadTooLarge() when payloadTooLarge != null:
        return payloadTooLarge(_that);
      case TooManyRequests() when tooManyRequests != null:
        return tooManyRequests(_that);
      case ServerError() when serverError != null:
        return serverError(_that);
      case ServiceUnavailable() when serviceUnavailable != null:
        return serviceUnavailable(_that);
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
    required TResult Function(NotFound value) notFound,
    required TResult Function(RequestTimeout value) requestTimeout,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(UnexpectedError value) unexpectedError,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(AuthErrors value) authErrors,
    required TResult Function(PayloadTooLarge value) payloadTooLarge,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(ServerError value) serverError,
    required TResult Function(ServiceUnavailable value) serviceUnavailable,
  }) {
    final _that = this;
    switch (_that) {
      case NotFound():
        return notFound(_that);
      case RequestTimeout():
        return requestTimeout(_that);
      case NoInternetConnection():
        return noInternetConnection(_that);
      case DefaultError():
        return defaultError(_that);
      case UnexpectedError():
        return unexpectedError(_that);
      case PermissionDenied():
        return permissionDenied(_that);
      case AuthErrors():
        return authErrors(_that);
      case PayloadTooLarge():
        return payloadTooLarge(_that);
      case TooManyRequests():
        return tooManyRequests(_that);
      case ServerError():
        return serverError(_that);
      case ServiceUnavailable():
        return serviceUnavailable(_that);
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
    TResult? Function(NotFound value)? notFound,
    TResult? Function(RequestTimeout value)? requestTimeout,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(DefaultError value)? defaultError,
    TResult? Function(UnexpectedError value)? unexpectedError,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(AuthErrors value)? authErrors,
    TResult? Function(PayloadTooLarge value)? payloadTooLarge,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ServiceUnavailable value)? serviceUnavailable,
  }) {
    final _that = this;
    switch (_that) {
      case NotFound() when notFound != null:
        return notFound(_that);
      case RequestTimeout() when requestTimeout != null:
        return requestTimeout(_that);
      case NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection(_that);
      case DefaultError() when defaultError != null:
        return defaultError(_that);
      case UnexpectedError() when unexpectedError != null:
        return unexpectedError(_that);
      case PermissionDenied() when permissionDenied != null:
        return permissionDenied(_that);
      case AuthErrors() when authErrors != null:
        return authErrors(_that);
      case PayloadTooLarge() when payloadTooLarge != null:
        return payloadTooLarge(_that);
      case TooManyRequests() when tooManyRequests != null:
        return tooManyRequests(_that);
      case ServerError() when serverError != null:
        return serverError(_that);
      case ServiceUnavailable() when serviceUnavailable != null:
        return serviceUnavailable(_that);
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
    TResult Function()? notFound,
    TResult Function()? requestTimeout,
    TResult Function()? noInternetConnection,
    TResult Function(String error)? defaultError,
    TResult Function()? unexpectedError,
    TResult Function()? permissionDenied,
    TResult Function(LoginErrors loginError)? authErrors,
    TResult Function()? payloadTooLarge,
    TResult Function(Duration? retryAfter)? tooManyRequests,
    TResult Function()? serverError,
    TResult Function()? serviceUnavailable,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NotFound() when notFound != null:
        return notFound();
      case RequestTimeout() when requestTimeout != null:
        return requestTimeout();
      case NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection();
      case DefaultError() when defaultError != null:
        return defaultError(_that.error);
      case UnexpectedError() when unexpectedError != null:
        return unexpectedError();
      case PermissionDenied() when permissionDenied != null:
        return permissionDenied();
      case AuthErrors() when authErrors != null:
        return authErrors(_that.loginError);
      case PayloadTooLarge() when payloadTooLarge != null:
        return payloadTooLarge();
      case TooManyRequests() when tooManyRequests != null:
        return tooManyRequests(_that.retryAfter);
      case ServerError() when serverError != null:
        return serverError();
      case ServiceUnavailable() when serviceUnavailable != null:
        return serviceUnavailable();
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
    required TResult Function() notFound,
    required TResult Function() requestTimeout,
    required TResult Function() noInternetConnection,
    required TResult Function(String error) defaultError,
    required TResult Function() unexpectedError,
    required TResult Function() permissionDenied,
    required TResult Function(LoginErrors loginError) authErrors,
    required TResult Function() payloadTooLarge,
    required TResult Function(Duration? retryAfter) tooManyRequests,
    required TResult Function() serverError,
    required TResult Function() serviceUnavailable,
  }) {
    final _that = this;
    switch (_that) {
      case NotFound():
        return notFound();
      case RequestTimeout():
        return requestTimeout();
      case NoInternetConnection():
        return noInternetConnection();
      case DefaultError():
        return defaultError(_that.error);
      case UnexpectedError():
        return unexpectedError();
      case PermissionDenied():
        return permissionDenied();
      case AuthErrors():
        return authErrors(_that.loginError);
      case PayloadTooLarge():
        return payloadTooLarge();
      case TooManyRequests():
        return tooManyRequests(_that.retryAfter);
      case ServerError():
        return serverError();
      case ServiceUnavailable():
        return serviceUnavailable();
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
    TResult? Function()? notFound,
    TResult? Function()? requestTimeout,
    TResult? Function()? noInternetConnection,
    TResult? Function(String error)? defaultError,
    TResult? Function()? unexpectedError,
    TResult? Function()? permissionDenied,
    TResult? Function(LoginErrors loginError)? authErrors,
    TResult? Function()? payloadTooLarge,
    TResult? Function(Duration? retryAfter)? tooManyRequests,
    TResult? Function()? serverError,
    TResult? Function()? serviceUnavailable,
  }) {
    final _that = this;
    switch (_that) {
      case NotFound() when notFound != null:
        return notFound();
      case RequestTimeout() when requestTimeout != null:
        return requestTimeout();
      case NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection();
      case DefaultError() when defaultError != null:
        return defaultError(_that.error);
      case UnexpectedError() when unexpectedError != null:
        return unexpectedError();
      case PermissionDenied() when permissionDenied != null:
        return permissionDenied();
      case AuthErrors() when authErrors != null:
        return authErrors(_that.loginError);
      case PayloadTooLarge() when payloadTooLarge != null:
        return payloadTooLarge();
      case TooManyRequests() when tooManyRequests != null:
        return tooManyRequests(_that.retryAfter);
      case ServerError() when serverError != null:
        return serverError();
      case ServiceUnavailable() when serviceUnavailable != null:
        return serviceUnavailable();
      case _:
        return null;
    }
  }
}

/// @nodoc

class NotFound implements AppErrors {
  const NotFound();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors.notFound()';
  }
}

/// @nodoc

class RequestTimeout implements AppErrors {
  const RequestTimeout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RequestTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors.requestTimeout()';
  }
}

/// @nodoc

class NoInternetConnection implements AppErrors {
  const NoInternetConnection();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors.noInternetConnection()';
  }
}

/// @nodoc

class DefaultError implements AppErrors {
  const DefaultError({required this.error});

  final String error;

  /// Create a copy of AppErrors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DefaultErrorCopyWith<DefaultError> get copyWith =>
      _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DefaultError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, error);
  }

  @override
  String toString() {
    return 'AppErrors.defaultError(error: $error)';
  }
}

/// @nodoc
abstract mixin class $DefaultErrorCopyWith<$Res>
    implements $AppErrorsCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) _then) =
      _$DefaultErrorCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res> implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._self, this._then);

  final DefaultError _self;
  final $Res Function(DefaultError) _then;

  /// Create a copy of AppErrors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(DefaultError(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UnexpectedError implements AppErrors {
  const UnexpectedError();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors.unexpectedError()';
  }
}

/// @nodoc

class PermissionDenied implements AppErrors {
  const PermissionDenied();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PermissionDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors.permissionDenied()';
  }
}

/// @nodoc

class AuthErrors implements AppErrors {
  const AuthErrors({required this.loginError});

  final LoginErrors loginError;

  /// Create a copy of AppErrors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthErrorsCopyWith<AuthErrors> get copyWith =>
      _$AuthErrorsCopyWithImpl<AuthErrors>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthErrors &&
            (identical(other.loginError, loginError) ||
                other.loginError == loginError));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, loginError);
  }

  @override
  String toString() {
    return 'AppErrors.authErrors(loginError: $loginError)';
  }
}

/// @nodoc
abstract mixin class $AuthErrorsCopyWith<$Res>
    implements $AppErrorsCopyWith<$Res> {
  factory $AuthErrorsCopyWith(
          AuthErrors value, $Res Function(AuthErrors) _then) =
      _$AuthErrorsCopyWithImpl;
  @useResult
  $Res call({LoginErrors loginError});

  $LoginErrorsCopyWith<$Res> get loginError;
}

/// @nodoc
class _$AuthErrorsCopyWithImpl<$Res> implements $AuthErrorsCopyWith<$Res> {
  _$AuthErrorsCopyWithImpl(this._self, this._then);

  final AuthErrors _self;
  final $Res Function(AuthErrors) _then;

  /// Create a copy of AppErrors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? loginError = null,
  }) {
    return _then(AuthErrors(
      loginError: null == loginError
          ? _self.loginError
          : loginError // ignore: cast_nullable_to_non_nullable
              as LoginErrors,
    ));
  }

  /// Create a copy of AppErrors
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginErrorsCopyWith<$Res> get loginError {
    return $LoginErrorsCopyWith<$Res>(_self.loginError, (value) {
      return _then(_self.copyWith(loginError: value));
    });
  }
}

/// @nodoc

class PayloadTooLarge implements AppErrors {
  const PayloadTooLarge();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PayloadTooLarge);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors.payloadTooLarge()';
  }
}

/// @nodoc

class TooManyRequests implements AppErrors {
  const TooManyRequests({this.retryAfter});

  final Duration? retryAfter;

  /// Create a copy of AppErrors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TooManyRequestsCopyWith<TooManyRequests> get copyWith =>
      _$TooManyRequestsCopyWithImpl<TooManyRequests>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TooManyRequests &&
            (identical(other.retryAfter, retryAfter) ||
                other.retryAfter == retryAfter));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, retryAfter);
  }

  @override
  String toString() {
    return 'AppErrors.tooManyRequests(retryAfter: $retryAfter)';
  }
}

/// @nodoc
abstract mixin class $TooManyRequestsCopyWith<$Res>
    implements $AppErrorsCopyWith<$Res> {
  factory $TooManyRequestsCopyWith(
          TooManyRequests value, $Res Function(TooManyRequests) _then) =
      _$TooManyRequestsCopyWithImpl;
  @useResult
  $Res call({Duration? retryAfter});
}

/// @nodoc
class _$TooManyRequestsCopyWithImpl<$Res>
    implements $TooManyRequestsCopyWith<$Res> {
  _$TooManyRequestsCopyWithImpl(this._self, this._then);

  final TooManyRequests _self;
  final $Res Function(TooManyRequests) _then;

  /// Create a copy of AppErrors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? retryAfter = freezed,
  }) {
    return _then(TooManyRequests(
      retryAfter: freezed == retryAfter
          ? _self.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class ServerError implements AppErrors {
  const ServerError();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors.serverError()';
  }
}

/// @nodoc

class ServiceUnavailable implements AppErrors {
  const ServiceUnavailable();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ServiceUnavailable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AppErrors.serviceUnavailable()';
  }
}

// dart format on

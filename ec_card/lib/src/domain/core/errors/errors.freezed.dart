// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppErrors {
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorsCopyWith<$Res> {
  factory $AppErrorsCopyWith(AppErrors value, $Res Function(AppErrors) then) =
      _$AppErrorsCopyWithImpl<$Res, AppErrors>;
}

/// @nodoc
class _$AppErrorsCopyWithImpl<$Res, $Val extends AppErrors>
    implements $AppErrorsCopyWith<$Res> {
  _$AppErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'AppErrors.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return notFound();
  }

  @override
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
    return notFound?.call();
  }

  @override
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
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
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
    return notFound(this);
  }

  @override
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
    return notFound?.call(this);
  }

  @override
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
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements AppErrors {
  const factory NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$RequestTimeoutImplCopyWith<$Res> {
  factory _$$RequestTimeoutImplCopyWith(_$RequestTimeoutImpl value,
          $Res Function(_$RequestTimeoutImpl) then) =
      __$$RequestTimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestTimeoutImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$RequestTimeoutImpl>
    implements _$$RequestTimeoutImplCopyWith<$Res> {
  __$$RequestTimeoutImplCopyWithImpl(
      _$RequestTimeoutImpl _value, $Res Function(_$RequestTimeoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestTimeoutImpl implements RequestTimeout {
  const _$RequestTimeoutImpl();

  @override
  String toString() {
    return 'AppErrors.requestTimeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestTimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return requestTimeout();
  }

  @override
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
    return requestTimeout?.call();
  }

  @override
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
    if (requestTimeout != null) {
      return requestTimeout();
    }
    return orElse();
  }

  @override
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
    return requestTimeout(this);
  }

  @override
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
    return requestTimeout?.call(this);
  }

  @override
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
    if (requestTimeout != null) {
      return requestTimeout(this);
    }
    return orElse();
  }
}

abstract class RequestTimeout implements AppErrors {
  const factory RequestTimeout() = _$RequestTimeoutImpl;
}

/// @nodoc
abstract class _$$NoInternetConnectionImplCopyWith<$Res> {
  factory _$$NoInternetConnectionImplCopyWith(_$NoInternetConnectionImpl value,
          $Res Function(_$NoInternetConnectionImpl) then) =
      __$$NoInternetConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$NoInternetConnectionImpl>
    implements _$$NoInternetConnectionImplCopyWith<$Res> {
  __$$NoInternetConnectionImplCopyWithImpl(_$NoInternetConnectionImpl _value,
      $Res Function(_$NoInternetConnectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetConnectionImpl implements NoInternetConnection {
  const _$NoInternetConnectionImpl();

  @override
  String toString() {
    return 'AppErrors.noInternetConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return noInternetConnection();
  }

  @override
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
    return noInternetConnection?.call();
  }

  @override
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
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
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
    return noInternetConnection(this);
  }

  @override
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
    return noInternetConnection?.call(this);
  }

  @override
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
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements AppErrors {
  const factory NoInternetConnection() = _$NoInternetConnectionImpl;
}

/// @nodoc
abstract class _$$DefaultErrorImplCopyWith<$Res> {
  factory _$$DefaultErrorImplCopyWith(
          _$DefaultErrorImpl value, $Res Function(_$DefaultErrorImpl) then) =
      __$$DefaultErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DefaultErrorImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$DefaultErrorImpl>
    implements _$$DefaultErrorImplCopyWith<$Res> {
  __$$DefaultErrorImplCopyWithImpl(
      _$DefaultErrorImpl _value, $Res Function(_$DefaultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DefaultErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DefaultErrorImpl implements DefaultError {
  const _$DefaultErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AppErrors.defaultError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultErrorImplCopyWith<_$DefaultErrorImpl> get copyWith =>
      __$$DefaultErrorImplCopyWithImpl<_$DefaultErrorImpl>(this, _$identity);

  @override
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
    return defaultError(error);
  }

  @override
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
    return defaultError?.call(error);
  }

  @override
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
    if (defaultError != null) {
      return defaultError(error);
    }
    return orElse();
  }

  @override
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
    return defaultError(this);
  }

  @override
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
    return defaultError?.call(this);
  }

  @override
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
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }
}

abstract class DefaultError implements AppErrors {
  const factory DefaultError({required final String error}) =
      _$DefaultErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$DefaultErrorImplCopyWith<_$DefaultErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorImplCopyWith<$Res> {
  factory _$$UnexpectedErrorImplCopyWith(_$UnexpectedErrorImpl value,
          $Res Function(_$UnexpectedErrorImpl) then) =
      __$$UnexpectedErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedErrorImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$UnexpectedErrorImpl>
    implements _$$UnexpectedErrorImplCopyWith<$Res> {
  __$$UnexpectedErrorImplCopyWithImpl(
      _$UnexpectedErrorImpl _value, $Res Function(_$UnexpectedErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedErrorImpl implements UnexpectedError {
  const _$UnexpectedErrorImpl();

  @override
  String toString() {
    return 'AppErrors.unexpectedError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return unexpectedError();
  }

  @override
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
    return unexpectedError?.call();
  }

  @override
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
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
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
    return unexpectedError(this);
  }

  @override
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
    return unexpectedError?.call(this);
  }

  @override
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
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements AppErrors {
  const factory UnexpectedError() = _$UnexpectedErrorImpl;
}

/// @nodoc
abstract class _$$PermissionDeniedImplCopyWith<$Res> {
  factory _$$PermissionDeniedImplCopyWith(_$PermissionDeniedImpl value,
          $Res Function(_$PermissionDeniedImpl) then) =
      __$$PermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$PermissionDeniedImpl>
    implements _$$PermissionDeniedImplCopyWith<$Res> {
  __$$PermissionDeniedImplCopyWithImpl(_$PermissionDeniedImpl _value,
      $Res Function(_$PermissionDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionDeniedImpl implements PermissionDenied {
  const _$PermissionDeniedImpl();

  @override
  String toString() {
    return 'AppErrors.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return permissionDenied();
  }

  @override
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
    return permissionDenied?.call();
  }

  @override
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
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
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
    return permissionDenied(this);
  }

  @override
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
    return permissionDenied?.call(this);
  }

  @override
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
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionDenied implements AppErrors {
  const factory PermissionDenied() = _$PermissionDeniedImpl;
}

/// @nodoc
abstract class _$$AuthErrorsImplCopyWith<$Res> {
  factory _$$AuthErrorsImplCopyWith(
          _$AuthErrorsImpl value, $Res Function(_$AuthErrorsImpl) then) =
      __$$AuthErrorsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginErrors loginError});

  $LoginErrorsCopyWith<$Res> get loginError;
}

/// @nodoc
class __$$AuthErrorsImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$AuthErrorsImpl>
    implements _$$AuthErrorsImplCopyWith<$Res> {
  __$$AuthErrorsImplCopyWithImpl(
      _$AuthErrorsImpl _value, $Res Function(_$AuthErrorsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginError = null,
  }) {
    return _then(_$AuthErrorsImpl(
      loginError: null == loginError
          ? _value.loginError
          : loginError // ignore: cast_nullable_to_non_nullable
              as LoginErrors,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginErrorsCopyWith<$Res> get loginError {
    return $LoginErrorsCopyWith<$Res>(_value.loginError, (value) {
      return _then(_value.copyWith(loginError: value));
    });
  }
}

/// @nodoc

class _$AuthErrorsImpl implements AuthErrors {
  const _$AuthErrorsImpl({required this.loginError});

  @override
  final LoginErrors loginError;

  @override
  String toString() {
    return 'AppErrors.authErrors(loginError: $loginError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorsImpl &&
            (identical(other.loginError, loginError) ||
                other.loginError == loginError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorsImplCopyWith<_$AuthErrorsImpl> get copyWith =>
      __$$AuthErrorsImplCopyWithImpl<_$AuthErrorsImpl>(this, _$identity);

  @override
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
    return authErrors(loginError);
  }

  @override
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
    return authErrors?.call(loginError);
  }

  @override
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
    if (authErrors != null) {
      return authErrors(loginError);
    }
    return orElse();
  }

  @override
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
    return authErrors(this);
  }

  @override
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
    return authErrors?.call(this);
  }

  @override
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
    if (authErrors != null) {
      return authErrors(this);
    }
    return orElse();
  }
}

abstract class AuthErrors implements AppErrors {
  const factory AuthErrors({required final LoginErrors loginError}) =
      _$AuthErrorsImpl;

  LoginErrors get loginError;
  @JsonKey(ignore: true)
  _$$AuthErrorsImplCopyWith<_$AuthErrorsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayloadTooLargeImplCopyWith<$Res> {
  factory _$$PayloadTooLargeImplCopyWith(_$PayloadTooLargeImpl value,
          $Res Function(_$PayloadTooLargeImpl) then) =
      __$$PayloadTooLargeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PayloadTooLargeImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$PayloadTooLargeImpl>
    implements _$$PayloadTooLargeImplCopyWith<$Res> {
  __$$PayloadTooLargeImplCopyWithImpl(
      _$PayloadTooLargeImpl _value, $Res Function(_$PayloadTooLargeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PayloadTooLargeImpl implements PayloadTooLarge {
  const _$PayloadTooLargeImpl();

  @override
  String toString() {
    return 'AppErrors.payloadTooLarge()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PayloadTooLargeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return payloadTooLarge();
  }

  @override
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
    return payloadTooLarge?.call();
  }

  @override
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
    if (payloadTooLarge != null) {
      return payloadTooLarge();
    }
    return orElse();
  }

  @override
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
    return payloadTooLarge(this);
  }

  @override
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
    return payloadTooLarge?.call(this);
  }

  @override
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
    if (payloadTooLarge != null) {
      return payloadTooLarge(this);
    }
    return orElse();
  }
}

abstract class PayloadTooLarge implements AppErrors {
  const factory PayloadTooLarge() = _$PayloadTooLargeImpl;
}

/// @nodoc
abstract class _$$TooManyRequestsImplCopyWith<$Res> {
  factory _$$TooManyRequestsImplCopyWith(_$TooManyRequestsImpl value,
          $Res Function(_$TooManyRequestsImpl) then) =
      __$$TooManyRequestsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration? retryAfter});
}

/// @nodoc
class __$$TooManyRequestsImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$TooManyRequestsImpl>
    implements _$$TooManyRequestsImplCopyWith<$Res> {
  __$$TooManyRequestsImplCopyWithImpl(
      _$TooManyRequestsImpl _value, $Res Function(_$TooManyRequestsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? retryAfter = freezed,
  }) {
    return _then(_$TooManyRequestsImpl(
      retryAfter: freezed == retryAfter
          ? _value.retryAfter
          : retryAfter // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$TooManyRequestsImpl implements TooManyRequests {
  const _$TooManyRequestsImpl({this.retryAfter});

  @override
  final Duration? retryAfter;

  @override
  String toString() {
    return 'AppErrors.tooManyRequests(retryAfter: $retryAfter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooManyRequestsImpl &&
            (identical(other.retryAfter, retryAfter) ||
                other.retryAfter == retryAfter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, retryAfter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TooManyRequestsImplCopyWith<_$TooManyRequestsImpl> get copyWith =>
      __$$TooManyRequestsImplCopyWithImpl<_$TooManyRequestsImpl>(
          this, _$identity);

  @override
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
    return tooManyRequests(retryAfter);
  }

  @override
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
    return tooManyRequests?.call(retryAfter);
  }

  @override
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
    if (tooManyRequests != null) {
      return tooManyRequests(retryAfter);
    }
    return orElse();
  }

  @override
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
    return tooManyRequests(this);
  }

  @override
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
    return tooManyRequests?.call(this);
  }

  @override
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
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequests implements AppErrors {
  const factory TooManyRequests({final Duration? retryAfter}) =
      _$TooManyRequestsImpl;

  Duration? get retryAfter;
  @JsonKey(ignore: true)
  _$$TooManyRequestsImplCopyWith<_$TooManyRequestsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'AppErrors.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return serverError();
  }

  @override
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
    return serverError?.call();
  }

  @override
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
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
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
    return serverError(this);
  }

  @override
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
    return serverError?.call(this);
  }

  @override
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
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AppErrors {
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$ServiceUnavailableImplCopyWith<$Res> {
  factory _$$ServiceUnavailableImplCopyWith(_$ServiceUnavailableImpl value,
          $Res Function(_$ServiceUnavailableImpl) then) =
      __$$ServiceUnavailableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServiceUnavailableImplCopyWithImpl<$Res>
    extends _$AppErrorsCopyWithImpl<$Res, _$ServiceUnavailableImpl>
    implements _$$ServiceUnavailableImplCopyWith<$Res> {
  __$$ServiceUnavailableImplCopyWithImpl(_$ServiceUnavailableImpl _value,
      $Res Function(_$ServiceUnavailableImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServiceUnavailableImpl implements ServiceUnavailable {
  const _$ServiceUnavailableImpl();

  @override
  String toString() {
    return 'AppErrors.serviceUnavailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServiceUnavailableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
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
    return serviceUnavailable();
  }

  @override
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
    return serviceUnavailable?.call();
  }

  @override
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
    if (serviceUnavailable != null) {
      return serviceUnavailable();
    }
    return orElse();
  }

  @override
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
    return serviceUnavailable(this);
  }

  @override
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
    return serviceUnavailable?.call(this);
  }

  @override
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
    if (serviceUnavailable != null) {
      return serviceUnavailable(this);
    }
    return orElse();
  }
}

abstract class ServiceUnavailable implements AppErrors {
  const factory ServiceUnavailable() = _$ServiceUnavailableImpl;
}

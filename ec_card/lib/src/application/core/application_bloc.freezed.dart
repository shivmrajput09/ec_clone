// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(bool isConnected) internetStatusChanged,
    required TResult Function() logout,
    required TResult Function(AppLifecycleState lifecycleState)
        applicationLifecycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(bool isConnected)? internetStatusChanged,
    TResult? Function()? logout,
    TResult? Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(bool isConnected)? internetStatusChanged,
    TResult Function()? logout,
    TResult Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatus value) checkStatus,
    required TResult Function(InternetStatusChanged value)
        internetStatusChanged,
    required TResult Function(Logout value) logout,
    required TResult Function(ApplicationLifecycleChanged value)
        applicationLifecycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckStatus value)? checkStatus,
    TResult? Function(InternetStatusChanged value)? internetStatusChanged,
    TResult? Function(Logout value)? logout,
    TResult? Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatus value)? checkStatus,
    TResult Function(InternetStatusChanged value)? internetStatusChanged,
    TResult Function(Logout value)? logout,
    TResult Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationEventCopyWith<$Res> {
  factory $ApplicationEventCopyWith(
          ApplicationEvent value, $Res Function(ApplicationEvent) then) =
      _$ApplicationEventCopyWithImpl<$Res, ApplicationEvent>;
}

/// @nodoc
class _$ApplicationEventCopyWithImpl<$Res, $Val extends ApplicationEvent>
    implements $ApplicationEventCopyWith<$Res> {
  _$ApplicationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckStatusImplCopyWith<$Res> {
  factory _$$CheckStatusImplCopyWith(
          _$CheckStatusImpl value, $Res Function(_$CheckStatusImpl) then) =
      __$$CheckStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckStatusImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$CheckStatusImpl>
    implements _$$CheckStatusImplCopyWith<$Res> {
  __$$CheckStatusImplCopyWithImpl(
      _$CheckStatusImpl _value, $Res Function(_$CheckStatusImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckStatusImpl implements CheckStatus {
  const _$CheckStatusImpl();

  @override
  String toString() {
    return 'ApplicationEvent.checkStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(bool isConnected) internetStatusChanged,
    required TResult Function() logout,
    required TResult Function(AppLifecycleState lifecycleState)
        applicationLifecycleChanged,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(bool isConnected)? internetStatusChanged,
    TResult? Function()? logout,
    TResult? Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
  }) {
    return checkStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(bool isConnected)? internetStatusChanged,
    TResult Function()? logout,
    TResult Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatus value) checkStatus,
    required TResult Function(InternetStatusChanged value)
        internetStatusChanged,
    required TResult Function(Logout value) logout,
    required TResult Function(ApplicationLifecycleChanged value)
        applicationLifecycleChanged,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckStatus value)? checkStatus,
    TResult? Function(InternetStatusChanged value)? internetStatusChanged,
    TResult? Function(Logout value)? logout,
    TResult? Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatus value)? checkStatus,
    TResult Function(InternetStatusChanged value)? internetStatusChanged,
    TResult Function(Logout value)? logout,
    TResult Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class CheckStatus implements ApplicationEvent {
  const factory CheckStatus() = _$CheckStatusImpl;
}

/// @nodoc
abstract class _$$InternetStatusChangedImplCopyWith<$Res> {
  factory _$$InternetStatusChangedImplCopyWith(
          _$InternetStatusChangedImpl value,
          $Res Function(_$InternetStatusChangedImpl) then) =
      __$$InternetStatusChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$InternetStatusChangedImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$InternetStatusChangedImpl>
    implements _$$InternetStatusChangedImplCopyWith<$Res> {
  __$$InternetStatusChangedImplCopyWithImpl(_$InternetStatusChangedImpl _value,
      $Res Function(_$InternetStatusChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$InternetStatusChangedImpl(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InternetStatusChangedImpl implements InternetStatusChanged {
  const _$InternetStatusChangedImpl(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'ApplicationEvent.internetStatusChanged(isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternetStatusChangedImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternetStatusChangedImplCopyWith<_$InternetStatusChangedImpl>
      get copyWith => __$$InternetStatusChangedImplCopyWithImpl<
          _$InternetStatusChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(bool isConnected) internetStatusChanged,
    required TResult Function() logout,
    required TResult Function(AppLifecycleState lifecycleState)
        applicationLifecycleChanged,
  }) {
    return internetStatusChanged(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(bool isConnected)? internetStatusChanged,
    TResult? Function()? logout,
    TResult? Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
  }) {
    return internetStatusChanged?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(bool isConnected)? internetStatusChanged,
    TResult Function()? logout,
    TResult Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    if (internetStatusChanged != null) {
      return internetStatusChanged(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatus value) checkStatus,
    required TResult Function(InternetStatusChanged value)
        internetStatusChanged,
    required TResult Function(Logout value) logout,
    required TResult Function(ApplicationLifecycleChanged value)
        applicationLifecycleChanged,
  }) {
    return internetStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckStatus value)? checkStatus,
    TResult? Function(InternetStatusChanged value)? internetStatusChanged,
    TResult? Function(Logout value)? logout,
    TResult? Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
  }) {
    return internetStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatus value)? checkStatus,
    TResult Function(InternetStatusChanged value)? internetStatusChanged,
    TResult Function(Logout value)? logout,
    TResult Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    if (internetStatusChanged != null) {
      return internetStatusChanged(this);
    }
    return orElse();
  }
}

abstract class InternetStatusChanged implements ApplicationEvent {
  const factory InternetStatusChanged(final bool isConnected) =
      _$InternetStatusChangedImpl;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$InternetStatusChangedImplCopyWith<_$InternetStatusChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutImpl implements Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'ApplicationEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(bool isConnected) internetStatusChanged,
    required TResult Function() logout,
    required TResult Function(AppLifecycleState lifecycleState)
        applicationLifecycleChanged,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(bool isConnected)? internetStatusChanged,
    TResult? Function()? logout,
    TResult? Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(bool isConnected)? internetStatusChanged,
    TResult Function()? logout,
    TResult Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatus value) checkStatus,
    required TResult Function(InternetStatusChanged value)
        internetStatusChanged,
    required TResult Function(Logout value) logout,
    required TResult Function(ApplicationLifecycleChanged value)
        applicationLifecycleChanged,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckStatus value)? checkStatus,
    TResult? Function(InternetStatusChanged value)? internetStatusChanged,
    TResult? Function(Logout value)? logout,
    TResult? Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatus value)? checkStatus,
    TResult Function(InternetStatusChanged value)? internetStatusChanged,
    TResult Function(Logout value)? logout,
    TResult Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class Logout implements ApplicationEvent {
  const factory Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$ApplicationLifecycleChangedImplCopyWith<$Res> {
  factory _$$ApplicationLifecycleChangedImplCopyWith(
          _$ApplicationLifecycleChangedImpl value,
          $Res Function(_$ApplicationLifecycleChangedImpl) then) =
      __$$ApplicationLifecycleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLifecycleState lifecycleState});
}

/// @nodoc
class __$$ApplicationLifecycleChangedImplCopyWithImpl<$Res>
    extends _$ApplicationEventCopyWithImpl<$Res,
        _$ApplicationLifecycleChangedImpl>
    implements _$$ApplicationLifecycleChangedImplCopyWith<$Res> {
  __$$ApplicationLifecycleChangedImplCopyWithImpl(
      _$ApplicationLifecycleChangedImpl _value,
      $Res Function(_$ApplicationLifecycleChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lifecycleState = null,
  }) {
    return _then(_$ApplicationLifecycleChangedImpl(
      lifecycleState: null == lifecycleState
          ? _value.lifecycleState
          : lifecycleState // ignore: cast_nullable_to_non_nullable
              as AppLifecycleState,
    ));
  }
}

/// @nodoc

class _$ApplicationLifecycleChangedImpl implements ApplicationLifecycleChanged {
  const _$ApplicationLifecycleChangedImpl({required this.lifecycleState});

  @override
  final AppLifecycleState lifecycleState;

  @override
  String toString() {
    return 'ApplicationEvent.applicationLifecycleChanged(lifecycleState: $lifecycleState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationLifecycleChangedImpl &&
            (identical(other.lifecycleState, lifecycleState) ||
                other.lifecycleState == lifecycleState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lifecycleState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationLifecycleChangedImplCopyWith<_$ApplicationLifecycleChangedImpl>
      get copyWith => __$$ApplicationLifecycleChangedImplCopyWithImpl<
          _$ApplicationLifecycleChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatus,
    required TResult Function(bool isConnected) internetStatusChanged,
    required TResult Function() logout,
    required TResult Function(AppLifecycleState lifecycleState)
        applicationLifecycleChanged,
  }) {
    return applicationLifecycleChanged(lifecycleState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatus,
    TResult? Function(bool isConnected)? internetStatusChanged,
    TResult? Function()? logout,
    TResult? Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
  }) {
    return applicationLifecycleChanged?.call(lifecycleState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatus,
    TResult Function(bool isConnected)? internetStatusChanged,
    TResult Function()? logout,
    TResult Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    if (applicationLifecycleChanged != null) {
      return applicationLifecycleChanged(lifecycleState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckStatus value) checkStatus,
    required TResult Function(InternetStatusChanged value)
        internetStatusChanged,
    required TResult Function(Logout value) logout,
    required TResult Function(ApplicationLifecycleChanged value)
        applicationLifecycleChanged,
  }) {
    return applicationLifecycleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckStatus value)? checkStatus,
    TResult? Function(InternetStatusChanged value)? internetStatusChanged,
    TResult? Function(Logout value)? logout,
    TResult? Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
  }) {
    return applicationLifecycleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckStatus value)? checkStatus,
    TResult Function(InternetStatusChanged value)? internetStatusChanged,
    TResult Function(Logout value)? logout,
    TResult Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    if (applicationLifecycleChanged != null) {
      return applicationLifecycleChanged(this);
    }
    return orElse();
  }
}

abstract class ApplicationLifecycleChanged implements ApplicationEvent {
  const factory ApplicationLifecycleChanged(
          {required final AppLifecycleState lifecycleState}) =
      _$ApplicationLifecycleChangedImpl;

  AppLifecycleState get lifecycleState;
  @JsonKey(ignore: true)
  _$$ApplicationLifecycleChangedImplCopyWith<_$ApplicationLifecycleChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationStateCopyWith<$Res> {
  factory $ApplicationStateCopyWith(
          ApplicationState value, $Res Function(ApplicationState) then) =
      _$ApplicationStateCopyWithImpl<$Res, ApplicationState>;
}

/// @nodoc
class _$ApplicationStateCopyWithImpl<$Res, $Val extends ApplicationState>
    implements $ApplicationStateCopyWith<$Res> {
  _$ApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ApplicationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ApplicationState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$NoInternetConnectionImplCopyWith<$Res> {
  factory _$$NoInternetConnectionImplCopyWith(_$NoInternetConnectionImpl value,
          $Res Function(_$NoInternetConnectionImpl) then) =
      __$$NoInternetConnectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$NoInternetConnectionImpl>
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
    return 'ApplicationState.noInternetConnection()';
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
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
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
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements ApplicationState {
  const factory NoInternetConnection() = _$NoInternetConnectionImpl;
}

/// @nodoc
abstract class _$$InternetRestoredImplCopyWith<$Res> {
  factory _$$InternetRestoredImplCopyWith(_$InternetRestoredImpl value,
          $Res Function(_$InternetRestoredImpl) then) =
      __$$InternetRestoredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InternetRestoredImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$InternetRestoredImpl>
    implements _$$InternetRestoredImplCopyWith<$Res> {
  __$$InternetRestoredImplCopyWithImpl(_$InternetRestoredImpl _value,
      $Res Function(_$InternetRestoredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InternetRestoredImpl implements InternetRestored {
  const _$InternetRestoredImpl();

  @override
  String toString() {
    return 'ApplicationState.internetRestored()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InternetRestoredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return internetRestored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return internetRestored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (internetRestored != null) {
      return internetRestored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return internetRestored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return internetRestored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (internetRestored != null) {
      return internetRestored(this);
    }
    return orElse();
  }
}

abstract class InternetRestored implements ApplicationState {
  const factory InternetRestored() = _$InternetRestoredImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl implements Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'ApplicationState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements ApplicationState {
  const factory Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'ApplicationState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements ApplicationState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$SetRouteForIntentNavImplCopyWith<$Res> {
  factory _$$SetRouteForIntentNavImplCopyWith(_$SetRouteForIntentNavImpl value,
          $Res Function(_$SetRouteForIntentNavImpl) then) =
      __$$SetRouteForIntentNavImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SetRouteForIntentNavImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$SetRouteForIntentNavImpl>
    implements _$$SetRouteForIntentNavImplCopyWith<$Res> {
  __$$SetRouteForIntentNavImplCopyWithImpl(_$SetRouteForIntentNavImpl _value,
      $Res Function(_$SetRouteForIntentNavImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SetRouteForIntentNavImpl implements SetRouteForIntentNav {
  const _$SetRouteForIntentNavImpl();

  @override
  String toString() {
    return 'ApplicationState.setRouteForIntentNav()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRouteForIntentNavImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return setRouteForIntentNav();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return setRouteForIntentNav?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (setRouteForIntentNav != null) {
      return setRouteForIntentNav();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return setRouteForIntentNav(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return setRouteForIntentNav?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (setRouteForIntentNav != null) {
      return setRouteForIntentNav(this);
    }
    return orElse();
  }
}

abstract class SetRouteForIntentNav implements ApplicationState {
  const factory SetRouteForIntentNav() = _$SetRouteForIntentNavImpl;
}

/// @nodoc
abstract class _$$ResumedImplCopyWith<$Res> {
  factory _$$ResumedImplCopyWith(
          _$ResumedImpl value, $Res Function(_$ResumedImpl) then) =
      __$$ResumedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumedImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$ResumedImpl>
    implements _$$ResumedImplCopyWith<$Res> {
  __$$ResumedImplCopyWithImpl(
      _$ResumedImpl _value, $Res Function(_$ResumedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResumedImpl implements Resumed {
  const _$ResumedImpl();

  @override
  String toString() {
    return 'ApplicationState.resumed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class Resumed implements ApplicationState {
  const factory Resumed() = _$ResumedImpl;
}

/// @nodoc
abstract class _$$PausedImplCopyWith<$Res> {
  factory _$$PausedImplCopyWith(
          _$PausedImpl value, $Res Function(_$PausedImpl) then) =
      __$$PausedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PausedImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$PausedImpl>
    implements _$$PausedImplCopyWith<$Res> {
  __$$PausedImplCopyWithImpl(
      _$PausedImpl _value, $Res Function(_$PausedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PausedImpl implements Paused {
  const _$PausedImpl();

  @override
  String toString() {
    return 'ApplicationState.paused()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PausedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class Paused implements ApplicationState {
  const factory Paused() = _$PausedImpl;
}

/// @nodoc
abstract class _$$InactiveImplCopyWith<$Res> {
  factory _$$InactiveImplCopyWith(
          _$InactiveImpl value, $Res Function(_$InactiveImpl) then) =
      __$$InactiveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InactiveImplCopyWithImpl<$Res>
    extends _$ApplicationStateCopyWithImpl<$Res, _$InactiveImpl>
    implements _$$InactiveImplCopyWith<$Res> {
  __$$InactiveImplCopyWithImpl(
      _$InactiveImpl _value, $Res Function(_$InactiveImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InactiveImpl implements Inactive {
  const _$InactiveImpl();

  @override
  String toString() {
    return 'ApplicationState.inactive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InactiveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternetConnection,
    required TResult Function() internetRestored,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() setRouteForIntentNav,
    required TResult Function() resumed,
    required TResult Function() paused,
    required TResult Function() inactive,
  }) {
    return inactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternetConnection,
    TResult? Function()? internetRestored,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? setRouteForIntentNav,
    TResult? Function()? resumed,
    TResult? Function()? paused,
    TResult? Function()? inactive,
  }) {
    return inactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternetConnection,
    TResult Function()? internetRestored,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? setRouteForIntentNav,
    TResult Function()? resumed,
    TResult Function()? paused,
    TResult Function()? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(InternetRestored value) internetRestored,
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(SetRouteForIntentNav value) setRouteForIntentNav,
    required TResult Function(Resumed value) resumed,
    required TResult Function(Paused value) paused,
    required TResult Function(Inactive value) inactive,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(NoInternetConnection value)? noInternetConnection,
    TResult? Function(InternetRestored value)? internetRestored,
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult? Function(Resumed value)? resumed,
    TResult? Function(Paused value)? paused,
    TResult? Function(Inactive value)? inactive,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(InternetRestored value)? internetRestored,
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(SetRouteForIntentNav value)? setRouteForIntentNav,
    TResult Function(Resumed value)? resumed,
    TResult Function(Paused value)? paused,
    TResult Function(Inactive value)? inactive,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class Inactive implements ApplicationState {
  const factory Inactive() = _$InactiveImpl;
}

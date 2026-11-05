// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ApplicationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ApplicationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationEvent()';
  }
}

/// @nodoc
class $ApplicationEventCopyWith<$Res> {
  $ApplicationEventCopyWith(
      ApplicationEvent _, $Res Function(ApplicationEvent) __);
}

/// Adds pattern-matching-related methods to [ApplicationEvent].
extension ApplicationEventPatterns on ApplicationEvent {
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
    TResult Function(CheckStatus value)? checkStatus,
    TResult Function(InternetStatusChanged value)? internetStatusChanged,
    TResult Function(Logout value)? logout,
    TResult Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CheckStatus() when checkStatus != null:
        return checkStatus(_that);
      case InternetStatusChanged() when internetStatusChanged != null:
        return internetStatusChanged(_that);
      case Logout() when logout != null:
        return logout(_that);
      case ApplicationLifecycleChanged()
          when applicationLifecycleChanged != null:
        return applicationLifecycleChanged(_that);
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
    required TResult Function(CheckStatus value) checkStatus,
    required TResult Function(InternetStatusChanged value)
        internetStatusChanged,
    required TResult Function(Logout value) logout,
    required TResult Function(ApplicationLifecycleChanged value)
        applicationLifecycleChanged,
  }) {
    final _that = this;
    switch (_that) {
      case CheckStatus():
        return checkStatus(_that);
      case InternetStatusChanged():
        return internetStatusChanged(_that);
      case Logout():
        return logout(_that);
      case ApplicationLifecycleChanged():
        return applicationLifecycleChanged(_that);
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
    TResult? Function(CheckStatus value)? checkStatus,
    TResult? Function(InternetStatusChanged value)? internetStatusChanged,
    TResult? Function(Logout value)? logout,
    TResult? Function(ApplicationLifecycleChanged value)?
        applicationLifecycleChanged,
  }) {
    final _that = this;
    switch (_that) {
      case CheckStatus() when checkStatus != null:
        return checkStatus(_that);
      case InternetStatusChanged() when internetStatusChanged != null:
        return internetStatusChanged(_that);
      case Logout() when logout != null:
        return logout(_that);
      case ApplicationLifecycleChanged()
          when applicationLifecycleChanged != null:
        return applicationLifecycleChanged(_that);
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
    TResult Function()? checkStatus,
    TResult Function(bool isConnected)? internetStatusChanged,
    TResult Function()? logout,
    TResult Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CheckStatus() when checkStatus != null:
        return checkStatus();
      case InternetStatusChanged() when internetStatusChanged != null:
        return internetStatusChanged(_that.isConnected);
      case Logout() when logout != null:
        return logout();
      case ApplicationLifecycleChanged()
          when applicationLifecycleChanged != null:
        return applicationLifecycleChanged(_that.lifecycleState);
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
    required TResult Function() checkStatus,
    required TResult Function(bool isConnected) internetStatusChanged,
    required TResult Function() logout,
    required TResult Function(AppLifecycleState lifecycleState)
        applicationLifecycleChanged,
  }) {
    final _that = this;
    switch (_that) {
      case CheckStatus():
        return checkStatus();
      case InternetStatusChanged():
        return internetStatusChanged(_that.isConnected);
      case Logout():
        return logout();
      case ApplicationLifecycleChanged():
        return applicationLifecycleChanged(_that.lifecycleState);
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
    TResult? Function()? checkStatus,
    TResult? Function(bool isConnected)? internetStatusChanged,
    TResult? Function()? logout,
    TResult? Function(AppLifecycleState lifecycleState)?
        applicationLifecycleChanged,
  }) {
    final _that = this;
    switch (_that) {
      case CheckStatus() when checkStatus != null:
        return checkStatus();
      case InternetStatusChanged() when internetStatusChanged != null:
        return internetStatusChanged(_that.isConnected);
      case Logout() when logout != null:
        return logout();
      case ApplicationLifecycleChanged()
          when applicationLifecycleChanged != null:
        return applicationLifecycleChanged(_that.lifecycleState);
      case _:
        return null;
    }
  }
}

/// @nodoc

class CheckStatus implements ApplicationEvent {
  const CheckStatus();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CheckStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationEvent.checkStatus()';
  }
}

/// @nodoc

class InternetStatusChanged implements ApplicationEvent {
  const InternetStatusChanged(this.isConnected);

  final bool isConnected;

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InternetStatusChangedCopyWith<InternetStatusChanged> get copyWith =>
      _$InternetStatusChangedCopyWithImpl<InternetStatusChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InternetStatusChanged &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, isConnected);
  }

  @override
  String toString() {
    return 'ApplicationEvent.internetStatusChanged(isConnected: $isConnected)';
  }
}

/// @nodoc
abstract mixin class $InternetStatusChangedCopyWith<$Res>
    implements $ApplicationEventCopyWith<$Res> {
  factory $InternetStatusChangedCopyWith(InternetStatusChanged value,
          $Res Function(InternetStatusChanged) _then) =
      _$InternetStatusChangedCopyWithImpl;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class _$InternetStatusChangedCopyWithImpl<$Res>
    implements $InternetStatusChangedCopyWith<$Res> {
  _$InternetStatusChangedCopyWithImpl(this._self, this._then);

  final InternetStatusChanged _self;
  final $Res Function(InternetStatusChanged) _then;

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(InternetStatusChanged(
      null == isConnected
          ? _self.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class Logout implements ApplicationEvent {
  const Logout();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationEvent.logout()';
  }
}

/// @nodoc

class ApplicationLifecycleChanged implements ApplicationEvent {
  const ApplicationLifecycleChanged({required this.lifecycleState});

  final AppLifecycleState lifecycleState;

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ApplicationLifecycleChangedCopyWith<ApplicationLifecycleChanged>
      get copyWith => _$ApplicationLifecycleChangedCopyWithImpl<
          ApplicationLifecycleChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ApplicationLifecycleChanged &&
            (identical(other.lifecycleState, lifecycleState) ||
                other.lifecycleState == lifecycleState));
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, lifecycleState);
  }

  @override
  String toString() {
    return 'ApplicationEvent.applicationLifecycleChanged(lifecycleState: $lifecycleState)';
  }
}

/// @nodoc
abstract mixin class $ApplicationLifecycleChangedCopyWith<$Res>
    implements $ApplicationEventCopyWith<$Res> {
  factory $ApplicationLifecycleChangedCopyWith(
          ApplicationLifecycleChanged value,
          $Res Function(ApplicationLifecycleChanged) _then) =
      _$ApplicationLifecycleChangedCopyWithImpl;
  @useResult
  $Res call({AppLifecycleState lifecycleState});
}

/// @nodoc
class _$ApplicationLifecycleChangedCopyWithImpl<$Res>
    implements $ApplicationLifecycleChangedCopyWith<$Res> {
  _$ApplicationLifecycleChangedCopyWithImpl(this._self, this._then);

  final ApplicationLifecycleChanged _self;
  final $Res Function(ApplicationLifecycleChanged) _then;

  /// Create a copy of ApplicationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lifecycleState = null,
  }) {
    return _then(ApplicationLifecycleChanged(
      lifecycleState: null == lifecycleState
          ? _self.lifecycleState
          : lifecycleState // ignore: cast_nullable_to_non_nullable
              as AppLifecycleState,
    ));
  }
}

/// @nodoc
mixin _$ApplicationState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ApplicationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState()';
  }
}

/// @nodoc
class $ApplicationStateCopyWith<$Res> {
  $ApplicationStateCopyWith(
      ApplicationState _, $Res Function(ApplicationState) __);
}

/// Adds pattern-matching-related methods to [ApplicationState].
extension ApplicationStatePatterns on ApplicationState {
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
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection(_that);
      case InternetRestored() when internetRestored != null:
        return internetRestored(_that);
      case Authenticated() when authenticated != null:
        return authenticated(_that);
      case Unauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case SetRouteForIntentNav() when setRouteForIntentNav != null:
        return setRouteForIntentNav(_that);
      case Resumed() when resumed != null:
        return resumed(_that);
      case Paused() when paused != null:
        return paused(_that);
      case Inactive() when inactive != null:
        return inactive(_that);
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
    final _that = this;
    switch (_that) {
      case Initial():
        return initial(_that);
      case NoInternetConnection():
        return noInternetConnection(_that);
      case InternetRestored():
        return internetRestored(_that);
      case Authenticated():
        return authenticated(_that);
      case Unauthenticated():
        return unauthenticated(_that);
      case SetRouteForIntentNav():
        return setRouteForIntentNav(_that);
      case Resumed():
        return resumed(_that);
      case Paused():
        return paused(_that);
      case Inactive():
        return inactive(_that);
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
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial(_that);
      case NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection(_that);
      case InternetRestored() when internetRestored != null:
        return internetRestored(_that);
      case Authenticated() when authenticated != null:
        return authenticated(_that);
      case Unauthenticated() when unauthenticated != null:
        return unauthenticated(_that);
      case SetRouteForIntentNav() when setRouteForIntentNav != null:
        return setRouteForIntentNav(_that);
      case Resumed() when resumed != null:
        return resumed(_that);
      case Paused() when paused != null:
        return paused(_that);
      case Inactive() when inactive != null:
        return inactive(_that);
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
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection();
      case InternetRestored() when internetRestored != null:
        return internetRestored();
      case Authenticated() when authenticated != null:
        return authenticated();
      case Unauthenticated() when unauthenticated != null:
        return unauthenticated();
      case SetRouteForIntentNav() when setRouteForIntentNav != null:
        return setRouteForIntentNav();
      case Resumed() when resumed != null:
        return resumed();
      case Paused() when paused != null:
        return paused();
      case Inactive() when inactive != null:
        return inactive();
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
    final _that = this;
    switch (_that) {
      case Initial():
        return initial();
      case NoInternetConnection():
        return noInternetConnection();
      case InternetRestored():
        return internetRestored();
      case Authenticated():
        return authenticated();
      case Unauthenticated():
        return unauthenticated();
      case SetRouteForIntentNav():
        return setRouteForIntentNav();
      case Resumed():
        return resumed();
      case Paused():
        return paused();
      case Inactive():
        return inactive();
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
    final _that = this;
    switch (_that) {
      case Initial() when initial != null:
        return initial();
      case NoInternetConnection() when noInternetConnection != null:
        return noInternetConnection();
      case InternetRestored() when internetRestored != null:
        return internetRestored();
      case Authenticated() when authenticated != null:
        return authenticated();
      case Unauthenticated() when unauthenticated != null:
        return unauthenticated();
      case SetRouteForIntentNav() when setRouteForIntentNav != null:
        return setRouteForIntentNav();
      case Resumed() when resumed != null:
        return resumed();
      case Paused() when paused != null:
        return paused();
      case Inactive() when inactive != null:
        return inactive();
      case _:
        return null;
    }
  }
}

/// @nodoc

class Initial implements ApplicationState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState.initial()';
  }
}

/// @nodoc

class NoInternetConnection implements ApplicationState {
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
    return 'ApplicationState.noInternetConnection()';
  }
}

/// @nodoc

class InternetRestored implements ApplicationState {
  const InternetRestored();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is InternetRestored);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState.internetRestored()';
  }
}

/// @nodoc

class Authenticated implements ApplicationState {
  const Authenticated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState.authenticated()';
  }
}

/// @nodoc

class Unauthenticated implements ApplicationState {
  const Unauthenticated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState.unauthenticated()';
  }
}

/// @nodoc

class SetRouteForIntentNav implements ApplicationState {
  const SetRouteForIntentNav();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SetRouteForIntentNav);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState.setRouteForIntentNav()';
  }
}

/// @nodoc

class Resumed implements ApplicationState {
  const Resumed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Resumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState.resumed()';
  }
}

/// @nodoc

class Paused implements ApplicationState {
  const Paused();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState.paused()';
  }
}

/// @nodoc

class Inactive implements ApplicationState {
  const Inactive();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Inactive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ApplicationState.inactive()';
  }
}

// dart format on

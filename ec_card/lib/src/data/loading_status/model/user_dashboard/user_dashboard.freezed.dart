// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDashboardData {

@JsonKey(name: 'unReadNotifications') int get unReadNotifications;@JsonKey(name: 'brandLogo') String get brandLogo;@JsonKey(name: 'tncWebUrl') String get tncWebUrl;@JsonKey(name: 'privacyWebUrl') String get privacyWebUrl;@JsonKey(name: 'message') String get message;@JsonKey(name: 'support') Map<String, dynamic> get support;
/// Create a copy of UserDashboardData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDashboardDataCopyWith<UserDashboardData> get copyWith => _$UserDashboardDataCopyWithImpl<UserDashboardData>(this as UserDashboardData, _$identity);

  /// Serializes this UserDashboardData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserDashboardData;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDashboardData&&(identical(other.unReadNotifications, _this.unReadNotifications) || other.unReadNotifications == _this.unReadNotifications)&&(identical(other.brandLogo, _this.brandLogo) || other.brandLogo == _this.brandLogo)&&(identical(other.tncWebUrl, _this.tncWebUrl) || other.tncWebUrl == _this.tncWebUrl)&&(identical(other.privacyWebUrl, _this.privacyWebUrl) || other.privacyWebUrl == _this.privacyWebUrl)&&(identical(other.message, _this.message) || other.message == _this.message)&&const DeepCollectionEquality().equals(other.support, _this.support));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserDashboardData;
  return Object.hash(runtimeType,_this.unReadNotifications,_this.brandLogo,_this.tncWebUrl,_this.privacyWebUrl,_this.message,const DeepCollectionEquality().hash(_this.support));
}

@override
String toString() {
  final _this = this as UserDashboardData;
  return 'UserDashboardData(unReadNotifications: ${_this.unReadNotifications}, brandLogo: ${_this.brandLogo}, tncWebUrl: ${_this.tncWebUrl}, privacyWebUrl: ${_this.privacyWebUrl}, message: ${_this.message}, support: ${_this.support})';
}


}

/// @nodoc
abstract mixin class $UserDashboardDataCopyWith<$Res>  {
  factory $UserDashboardDataCopyWith(UserDashboardData value, $Res Function(UserDashboardData) _then) = _$UserDashboardDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'unReadNotifications') int unReadNotifications,@JsonKey(name: 'brandLogo') String brandLogo,@JsonKey(name: 'tncWebUrl') String tncWebUrl,@JsonKey(name: 'privacyWebUrl') String privacyWebUrl,@JsonKey(name: 'message') String message,@JsonKey(name: 'support') Map<String, dynamic> support
});




}
/// @nodoc
class _$UserDashboardDataCopyWithImpl<$Res>
    implements $UserDashboardDataCopyWith<$Res> {
  _$UserDashboardDataCopyWithImpl(this._self, this._then);

  final UserDashboardData _self;
  final $Res Function(UserDashboardData) _then;

/// Create a copy of UserDashboardData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? unReadNotifications = null,Object? brandLogo = null,Object? tncWebUrl = null,Object? privacyWebUrl = null,Object? message = null,Object? support = null,}) {
  return _then(UserDashboardData(
unReadNotifications: null == unReadNotifications ? _self.unReadNotifications : unReadNotifications // ignore: cast_nullable_to_non_nullable
as int,brandLogo: null == brandLogo ? _self.brandLogo : brandLogo // ignore: cast_nullable_to_non_nullable
as String,tncWebUrl: null == tncWebUrl ? _self.tncWebUrl : tncWebUrl // ignore: cast_nullable_to_non_nullable
as String,privacyWebUrl: null == privacyWebUrl ? _self.privacyWebUrl : privacyWebUrl // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,support: null == support ? _self.support : support // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDashboardData].
extension UserDashboardDataPatterns on UserDashboardData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDashboardData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDashboardData() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDashboardData value)  $default,){
final _that = this;
switch (_that) {
case _UserDashboardData():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDashboardData value)?  $default,){
final _that = this;
switch (_that) {
case _UserDashboardData() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'unReadNotifications')  int unReadNotifications, @JsonKey(name: 'brandLogo')  String brandLogo, @JsonKey(name: 'tncWebUrl')  String tncWebUrl, @JsonKey(name: 'privacyWebUrl')  String privacyWebUrl, @JsonKey(name: 'message')  String message, @JsonKey(name: 'support')  Map<String, dynamic> support)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDashboardData() when $default != null:
return $default(_that.unReadNotifications,_that.brandLogo,_that.tncWebUrl,_that.privacyWebUrl,_that.message,_that.support);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'unReadNotifications')  int unReadNotifications, @JsonKey(name: 'brandLogo')  String brandLogo, @JsonKey(name: 'tncWebUrl')  String tncWebUrl, @JsonKey(name: 'privacyWebUrl')  String privacyWebUrl, @JsonKey(name: 'message')  String message, @JsonKey(name: 'support')  Map<String, dynamic> support)  $default,) {final _that = this;
switch (_that) {
case _UserDashboardData():
return $default(_that.unReadNotifications,_that.brandLogo,_that.tncWebUrl,_that.privacyWebUrl,_that.message,_that.support);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'unReadNotifications')  int unReadNotifications, @JsonKey(name: 'brandLogo')  String brandLogo, @JsonKey(name: 'tncWebUrl')  String tncWebUrl, @JsonKey(name: 'privacyWebUrl')  String privacyWebUrl, @JsonKey(name: 'message')  String message, @JsonKey(name: 'support')  Map<String, dynamic> support)?  $default,) {final _that = this;
switch (_that) {
case _UserDashboardData() when $default != null:
return $default(_that.unReadNotifications,_that.brandLogo,_that.tncWebUrl,_that.privacyWebUrl,_that.message,_that.support);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDashboardData implements UserDashboardData {
  const _UserDashboardData({@JsonKey(name: 'unReadNotifications') this.unReadNotifications = 0, @JsonKey(name: 'brandLogo') this.brandLogo = '', @JsonKey(name: 'tncWebUrl') this.tncWebUrl = '', @JsonKey(name: 'privacyWebUrl') this.privacyWebUrl = '', @JsonKey(name: 'message') this.message = '', @JsonKey(name: 'support')  Map<String, dynamic> support = const {}}): _support = support;
  factory _UserDashboardData.fromJson(Map<String, dynamic> json) => _$UserDashboardDataFromJson(json);

@override@JsonKey(name: 'unReadNotifications') final  int unReadNotifications;
@override@JsonKey(name: 'brandLogo') final  String brandLogo;
@override@JsonKey(name: 'tncWebUrl') final  String tncWebUrl;
@override@JsonKey(name: 'privacyWebUrl') final  String privacyWebUrl;
@override@JsonKey(name: 'message') final  String message;
 final  Map<String, dynamic> _support;
@override@JsonKey(name: 'support') Map<String, dynamic> get support {
  if (_support is EqualUnmodifiableMapView) return _support;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_support);
}


/// Create a copy of UserDashboardData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDashboardDataCopyWith<_UserDashboardData> get copyWith => __$UserDashboardDataCopyWithImpl<_UserDashboardData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDashboardDataToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDashboardData&&(identical(other.unReadNotifications, unReadNotifications) || other.unReadNotifications == unReadNotifications)&&(identical(other.brandLogo, brandLogo) || other.brandLogo == brandLogo)&&(identical(other.tncWebUrl, tncWebUrl) || other.tncWebUrl == tncWebUrl)&&(identical(other.privacyWebUrl, privacyWebUrl) || other.privacyWebUrl == privacyWebUrl)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.support, _support));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,unReadNotifications,brandLogo,tncWebUrl,privacyWebUrl,message,const DeepCollectionEquality().hash(_support));
}

@override
String toString() {
    return 'UserDashboardData(unReadNotifications: $unReadNotifications, brandLogo: $brandLogo, tncWebUrl: $tncWebUrl, privacyWebUrl: $privacyWebUrl, message: $message, support: $support)';
}


}

/// @nodoc
abstract mixin class _$UserDashboardDataCopyWith<$Res> implements $UserDashboardDataCopyWith<$Res> {
  factory _$UserDashboardDataCopyWith(_UserDashboardData value, $Res Function(_UserDashboardData) _then) = __$UserDashboardDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'unReadNotifications') int unReadNotifications,@JsonKey(name: 'brandLogo') String brandLogo,@JsonKey(name: 'tncWebUrl') String tncWebUrl,@JsonKey(name: 'privacyWebUrl') String privacyWebUrl,@JsonKey(name: 'message') String message,@JsonKey(name: 'support') Map<String, dynamic> support
});




}
/// @nodoc
class __$UserDashboardDataCopyWithImpl<$Res>
    implements _$UserDashboardDataCopyWith<$Res> {
  __$UserDashboardDataCopyWithImpl(this._self, this._then);

  final _UserDashboardData _self;
  final $Res Function(_UserDashboardData) _then;

/// Create a copy of UserDashboardData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? unReadNotifications = null,Object? brandLogo = null,Object? tncWebUrl = null,Object? privacyWebUrl = null,Object? message = null,Object? support = null,}) {
  return _then(_UserDashboardData(
unReadNotifications: null == unReadNotifications ? _self.unReadNotifications : unReadNotifications // ignore: cast_nullable_to_non_nullable
as int,brandLogo: null == brandLogo ? _self.brandLogo : brandLogo // ignore: cast_nullable_to_non_nullable
as String,tncWebUrl: null == tncWebUrl ? _self.tncWebUrl : tncWebUrl // ignore: cast_nullable_to_non_nullable
as String,privacyWebUrl: null == privacyWebUrl ? _self.privacyWebUrl : privacyWebUrl // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,support: null == support ? _self._support : support // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on

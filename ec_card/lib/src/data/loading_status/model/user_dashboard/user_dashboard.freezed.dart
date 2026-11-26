// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dashboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDashboardData _$UserDashboardDataFromJson(Map<String, dynamic> json) {
  return _UserDashboardData.fromJson(json);
}

/// @nodoc
mixin _$UserDashboardData {
  @JsonKey(name: 'unReadNotifications')
  int get unReadNotifications => throw _privateConstructorUsedError;
  @JsonKey(name: 'brandLogo')
  String get brandLogo => throw _privateConstructorUsedError;
  @JsonKey(name: 'tncWebUrl')
  String get tncWebUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'privacyWebUrl')
  String get privacyWebUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'support')
  Map<String, dynamic> get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDashboardDataCopyWith<UserDashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDashboardDataCopyWith<$Res> {
  factory $UserDashboardDataCopyWith(
          UserDashboardData value, $Res Function(UserDashboardData) then) =
      _$UserDashboardDataCopyWithImpl<$Res, UserDashboardData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'unReadNotifications') int unReadNotifications,
      @JsonKey(name: 'brandLogo') String brandLogo,
      @JsonKey(name: 'tncWebUrl') String tncWebUrl,
      @JsonKey(name: 'privacyWebUrl') String privacyWebUrl,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'support') Map<String, dynamic> support});
}

/// @nodoc
class _$UserDashboardDataCopyWithImpl<$Res, $Val extends UserDashboardData>
    implements $UserDashboardDataCopyWith<$Res> {
  _$UserDashboardDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unReadNotifications = null,
    Object? brandLogo = null,
    Object? tncWebUrl = null,
    Object? privacyWebUrl = null,
    Object? message = null,
    Object? support = null,
  }) {
    return _then(_value.copyWith(
      unReadNotifications: null == unReadNotifications
          ? _value.unReadNotifications
          : unReadNotifications // ignore: cast_nullable_to_non_nullable
              as int,
      brandLogo: null == brandLogo
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String,
      tncWebUrl: null == tncWebUrl
          ? _value.tncWebUrl
          : tncWebUrl // ignore: cast_nullable_to_non_nullable
              as String,
      privacyWebUrl: null == privacyWebUrl
          ? _value.privacyWebUrl
          : privacyWebUrl // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      support: null == support
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDashboardDataImplCopyWith<$Res>
    implements $UserDashboardDataCopyWith<$Res> {
  factory _$$UserDashboardDataImplCopyWith(_$UserDashboardDataImpl value,
          $Res Function(_$UserDashboardDataImpl) then) =
      __$$UserDashboardDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'unReadNotifications') int unReadNotifications,
      @JsonKey(name: 'brandLogo') String brandLogo,
      @JsonKey(name: 'tncWebUrl') String tncWebUrl,
      @JsonKey(name: 'privacyWebUrl') String privacyWebUrl,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'support') Map<String, dynamic> support});
}

/// @nodoc
class __$$UserDashboardDataImplCopyWithImpl<$Res>
    extends _$UserDashboardDataCopyWithImpl<$Res, _$UserDashboardDataImpl>
    implements _$$UserDashboardDataImplCopyWith<$Res> {
  __$$UserDashboardDataImplCopyWithImpl(_$UserDashboardDataImpl _value,
      $Res Function(_$UserDashboardDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unReadNotifications = null,
    Object? brandLogo = null,
    Object? tncWebUrl = null,
    Object? privacyWebUrl = null,
    Object? message = null,
    Object? support = null,
  }) {
    return _then(_$UserDashboardDataImpl(
      unReadNotifications: null == unReadNotifications
          ? _value.unReadNotifications
          : unReadNotifications // ignore: cast_nullable_to_non_nullable
              as int,
      brandLogo: null == brandLogo
          ? _value.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String,
      tncWebUrl: null == tncWebUrl
          ? _value.tncWebUrl
          : tncWebUrl // ignore: cast_nullable_to_non_nullable
              as String,
      privacyWebUrl: null == privacyWebUrl
          ? _value.privacyWebUrl
          : privacyWebUrl // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      support: null == support
          ? _value._support
          : support // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDashboardDataImpl implements _UserDashboardData {
  const _$UserDashboardDataImpl(
      {@JsonKey(name: 'unReadNotifications') this.unReadNotifications = 0,
      @JsonKey(name: 'brandLogo') this.brandLogo = '',
      @JsonKey(name: 'tncWebUrl') this.tncWebUrl = '',
      @JsonKey(name: 'privacyWebUrl') this.privacyWebUrl = '',
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'support') final Map<String, dynamic> support = const {}})
      : _support = support;

  factory _$UserDashboardDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDashboardDataImplFromJson(json);

  @override
  @JsonKey(name: 'unReadNotifications')
  final int unReadNotifications;
  @override
  @JsonKey(name: 'brandLogo')
  final String brandLogo;
  @override
  @JsonKey(name: 'tncWebUrl')
  final String tncWebUrl;
  @override
  @JsonKey(name: 'privacyWebUrl')
  final String privacyWebUrl;
  @override
  @JsonKey(name: 'message')
  final String message;
  final Map<String, dynamic> _support;
  @override
  @JsonKey(name: 'support')
  Map<String, dynamic> get support {
    if (_support is EqualUnmodifiableMapView) return _support;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_support);
  }

  @override
  String toString() {
    return 'UserDashboardData(unReadNotifications: $unReadNotifications, brandLogo: $brandLogo, tncWebUrl: $tncWebUrl, privacyWebUrl: $privacyWebUrl, message: $message, support: $support)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDashboardDataImpl &&
            (identical(other.unReadNotifications, unReadNotifications) ||
                other.unReadNotifications == unReadNotifications) &&
            (identical(other.brandLogo, brandLogo) ||
                other.brandLogo == brandLogo) &&
            (identical(other.tncWebUrl, tncWebUrl) ||
                other.tncWebUrl == tncWebUrl) &&
            (identical(other.privacyWebUrl, privacyWebUrl) ||
                other.privacyWebUrl == privacyWebUrl) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._support, _support));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      unReadNotifications,
      brandLogo,
      tncWebUrl,
      privacyWebUrl,
      message,
      const DeepCollectionEquality().hash(_support));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDashboardDataImplCopyWith<_$UserDashboardDataImpl> get copyWith =>
      __$$UserDashboardDataImplCopyWithImpl<_$UserDashboardDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDashboardDataImplToJson(
      this,
    );
  }
}

abstract class _UserDashboardData implements UserDashboardData {
  const factory _UserDashboardData(
          {@JsonKey(name: 'unReadNotifications') final int unReadNotifications,
          @JsonKey(name: 'brandLogo') final String brandLogo,
          @JsonKey(name: 'tncWebUrl') final String tncWebUrl,
          @JsonKey(name: 'privacyWebUrl') final String privacyWebUrl,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'support') final Map<String, dynamic> support}) =
      _$UserDashboardDataImpl;

  factory _UserDashboardData.fromJson(Map<String, dynamic> json) =
      _$UserDashboardDataImpl.fromJson;

  @override
  @JsonKey(name: 'unReadNotifications')
  int get unReadNotifications;
  @override
  @JsonKey(name: 'brandLogo')
  String get brandLogo;
  @override
  @JsonKey(name: 'tncWebUrl')
  String get tncWebUrl;
  @override
  @JsonKey(name: 'privacyWebUrl')
  String get privacyWebUrl;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'support')
  Map<String, dynamic> get support;
  @override
  @JsonKey(ignore: true)
  _$$UserDashboardDataImplCopyWith<_$UserDashboardDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

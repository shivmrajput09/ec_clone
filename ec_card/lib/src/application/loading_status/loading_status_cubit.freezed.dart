// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadingStatusState {

 Option<Either<AppErrors, String>> get quizPassedFailureOrSuccess;/// [Change Effect]
/// `@Default(false)` ka matlab hai agar Cubit ne `isLoading` ki value nahi di, 
/// toh default false maan lo. Agar tum yahan se `@Default(false)` hata do, 
/// toh Freezed error dega ki ya toh default value batao, ya isko 'required' karo.
 bool get isLoading; OrgBrandInfoData? get brandInfo; UserDashboardData? get userDashboardData; Option<Either<AppErrors, UserDashboardData>> get dashboardCallFailureOrSuccess; bool get dashboardLoading; UserProfileData? get userProfileData; Option<Either<AppErrors, UserProfileData>> get profileCallFailureOrSuccess; bool get profileLoading; bool get otpLoading; bool get selfDeletionProcessStarted; String get otp; Option<Either<AppErrors, String>> get deleteFailureOrSuccessOption; List<VideoItem> get videoList; bool get isConnectedToInternet;
/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingStatusStateCopyWith<LoadingStatusState> get copyWith => _$LoadingStatusStateCopyWithImpl<LoadingStatusState>(this as LoadingStatusState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LoadingStatusState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingStatusState&&(identical(other.quizPassedFailureOrSuccess, _this.quizPassedFailureOrSuccess) || other.quizPassedFailureOrSuccess == _this.quizPassedFailureOrSuccess)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.brandInfo, _this.brandInfo) || other.brandInfo == _this.brandInfo)&&(identical(other.userDashboardData, _this.userDashboardData) || other.userDashboardData == _this.userDashboardData)&&(identical(other.dashboardCallFailureOrSuccess, _this.dashboardCallFailureOrSuccess) || other.dashboardCallFailureOrSuccess == _this.dashboardCallFailureOrSuccess)&&(identical(other.dashboardLoading, _this.dashboardLoading) || other.dashboardLoading == _this.dashboardLoading)&&(identical(other.userProfileData, _this.userProfileData) || other.userProfileData == _this.userProfileData)&&(identical(other.profileCallFailureOrSuccess, _this.profileCallFailureOrSuccess) || other.profileCallFailureOrSuccess == _this.profileCallFailureOrSuccess)&&(identical(other.profileLoading, _this.profileLoading) || other.profileLoading == _this.profileLoading)&&(identical(other.otpLoading, _this.otpLoading) || other.otpLoading == _this.otpLoading)&&(identical(other.selfDeletionProcessStarted, _this.selfDeletionProcessStarted) || other.selfDeletionProcessStarted == _this.selfDeletionProcessStarted)&&(identical(other.otp, _this.otp) || other.otp == _this.otp)&&(identical(other.deleteFailureOrSuccessOption, _this.deleteFailureOrSuccessOption) || other.deleteFailureOrSuccessOption == _this.deleteFailureOrSuccessOption)&&const DeepCollectionEquality().equals(other.videoList, _this.videoList)&&(identical(other.isConnectedToInternet, _this.isConnectedToInternet) || other.isConnectedToInternet == _this.isConnectedToInternet));
}


@override
int get hashCode {
  final _this = this as LoadingStatusState;
  return Object.hash(runtimeType,_this.quizPassedFailureOrSuccess,_this.isLoading,_this.brandInfo,_this.userDashboardData,_this.dashboardCallFailureOrSuccess,_this.dashboardLoading,_this.userProfileData,_this.profileCallFailureOrSuccess,_this.profileLoading,_this.otpLoading,_this.selfDeletionProcessStarted,_this.otp,_this.deleteFailureOrSuccessOption,const DeepCollectionEquality().hash(_this.videoList),_this.isConnectedToInternet);
}

@override
String toString() {
  final _this = this as LoadingStatusState;
  return 'LoadingStatusState(quizPassedFailureOrSuccess: ${_this.quizPassedFailureOrSuccess}, isLoading: ${_this.isLoading}, brandInfo: ${_this.brandInfo}, userDashboardData: ${_this.userDashboardData}, dashboardCallFailureOrSuccess: ${_this.dashboardCallFailureOrSuccess}, dashboardLoading: ${_this.dashboardLoading}, userProfileData: ${_this.userProfileData}, profileCallFailureOrSuccess: ${_this.profileCallFailureOrSuccess}, profileLoading: ${_this.profileLoading}, otpLoading: ${_this.otpLoading}, selfDeletionProcessStarted: ${_this.selfDeletionProcessStarted}, otp: ${_this.otp}, deleteFailureOrSuccessOption: ${_this.deleteFailureOrSuccessOption}, videoList: ${_this.videoList}, isConnectedToInternet: ${_this.isConnectedToInternet})';
}


}

/// @nodoc
abstract mixin class $LoadingStatusStateCopyWith<$Res>  {
  factory $LoadingStatusStateCopyWith(LoadingStatusState value, $Res Function(LoadingStatusState) _then) = _$LoadingStatusStateCopyWithImpl;
@useResult
$Res call({
 Option<Either<AppErrors, String>> quizPassedFailureOrSuccess, bool isLoading, OrgBrandInfoData? brandInfo, UserDashboardData? userDashboardData, Option<Either<AppErrors, UserDashboardData>> dashboardCallFailureOrSuccess, bool dashboardLoading, UserProfileData? userProfileData, Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess, bool profileLoading, bool otpLoading, bool selfDeletionProcessStarted, String otp, Option<Either<AppErrors, String>> deleteFailureOrSuccessOption, List<VideoItem> videoList, bool isConnectedToInternet
});


$OrgBrandInfoDataCopyWith<$Res>? get brandInfo;$UserDashboardDataCopyWith<$Res>? get userDashboardData;$UserProfileDataCopyWith<$Res>? get userProfileData;

}
/// @nodoc
class _$LoadingStatusStateCopyWithImpl<$Res>
    implements $LoadingStatusStateCopyWith<$Res> {
  _$LoadingStatusStateCopyWithImpl(this._self, this._then);

  final LoadingStatusState _self;
  final $Res Function(LoadingStatusState) _then;

/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quizPassedFailureOrSuccess = null,Object? isLoading = null,Object? brandInfo = freezed,Object? userDashboardData = freezed,Object? dashboardCallFailureOrSuccess = null,Object? dashboardLoading = null,Object? userProfileData = freezed,Object? profileCallFailureOrSuccess = null,Object? profileLoading = null,Object? otpLoading = null,Object? selfDeletionProcessStarted = null,Object? otp = null,Object? deleteFailureOrSuccessOption = null,Object? videoList = null,Object? isConnectedToInternet = null,}) {
  return _then(LoadingStatusState(
quizPassedFailureOrSuccess: null == quizPassedFailureOrSuccess ? _self.quizPassedFailureOrSuccess : quizPassedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AppErrors, String>>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,brandInfo: freezed == brandInfo ? _self.brandInfo : brandInfo // ignore: cast_nullable_to_non_nullable
as OrgBrandInfoData?,userDashboardData: freezed == userDashboardData ? _self.userDashboardData : userDashboardData // ignore: cast_nullable_to_non_nullable
as UserDashboardData?,dashboardCallFailureOrSuccess: null == dashboardCallFailureOrSuccess ? _self.dashboardCallFailureOrSuccess : dashboardCallFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AppErrors, UserDashboardData>>,dashboardLoading: null == dashboardLoading ? _self.dashboardLoading : dashboardLoading // ignore: cast_nullable_to_non_nullable
as bool,userProfileData: freezed == userProfileData ? _self.userProfileData : userProfileData // ignore: cast_nullable_to_non_nullable
as UserProfileData?,profileCallFailureOrSuccess: null == profileCallFailureOrSuccess ? _self.profileCallFailureOrSuccess : profileCallFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AppErrors, UserProfileData>>,profileLoading: null == profileLoading ? _self.profileLoading : profileLoading // ignore: cast_nullable_to_non_nullable
as bool,otpLoading: null == otpLoading ? _self.otpLoading : otpLoading // ignore: cast_nullable_to_non_nullable
as bool,selfDeletionProcessStarted: null == selfDeletionProcessStarted ? _self.selfDeletionProcessStarted : selfDeletionProcessStarted // ignore: cast_nullable_to_non_nullable
as bool,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption ? _self.deleteFailureOrSuccessOption : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AppErrors, String>>,videoList: null == videoList ? _self.videoList : videoList // ignore: cast_nullable_to_non_nullable
as List<VideoItem>,isConnectedToInternet: null == isConnectedToInternet ? _self.isConnectedToInternet : isConnectedToInternet // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrgBrandInfoDataCopyWith<$Res>? get brandInfo {
    if (_self.brandInfo == null) {
    return null;
  }

  return $OrgBrandInfoDataCopyWith<$Res>(_self.brandInfo!, (value) {
    return _then(_self.copyWith(brandInfo: value));
  });
}/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDashboardDataCopyWith<$Res>? get userDashboardData {
    if (_self.userDashboardData == null) {
    return null;
  }

  return $UserDashboardDataCopyWith<$Res>(_self.userDashboardData!, (value) {
    return _then(_self.copyWith(userDashboardData: value));
  });
}/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDataCopyWith<$Res>? get userProfileData {
    if (_self.userProfileData == null) {
    return null;
  }

  return $UserProfileDataCopyWith<$Res>(_self.userProfileData!, (value) {
    return _then(_self.copyWith(userProfileData: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoadingStatusState].
extension LoadingStatusStatePatterns on LoadingStatusState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoadingStatusState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingStatusState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoadingStatusState value)  $default,){
final _that = this;
switch (_that) {
case _LoadingStatusState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoadingStatusState value)?  $default,){
final _that = this;
switch (_that) {
case _LoadingStatusState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Option<Either<AppErrors, String>> quizPassedFailureOrSuccess,  bool isLoading,  OrgBrandInfoData? brandInfo,  UserDashboardData? userDashboardData,  Option<Either<AppErrors, UserDashboardData>> dashboardCallFailureOrSuccess,  bool dashboardLoading,  UserProfileData? userProfileData,  Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess,  bool profileLoading,  bool otpLoading,  bool selfDeletionProcessStarted,  String otp,  Option<Either<AppErrors, String>> deleteFailureOrSuccessOption,  List<VideoItem> videoList,  bool isConnectedToInternet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingStatusState() when $default != null:
return $default(_that.quizPassedFailureOrSuccess,_that.isLoading,_that.brandInfo,_that.userDashboardData,_that.dashboardCallFailureOrSuccess,_that.dashboardLoading,_that.userProfileData,_that.profileCallFailureOrSuccess,_that.profileLoading,_that.otpLoading,_that.selfDeletionProcessStarted,_that.otp,_that.deleteFailureOrSuccessOption,_that.videoList,_that.isConnectedToInternet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Option<Either<AppErrors, String>> quizPassedFailureOrSuccess,  bool isLoading,  OrgBrandInfoData? brandInfo,  UserDashboardData? userDashboardData,  Option<Either<AppErrors, UserDashboardData>> dashboardCallFailureOrSuccess,  bool dashboardLoading,  UserProfileData? userProfileData,  Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess,  bool profileLoading,  bool otpLoading,  bool selfDeletionProcessStarted,  String otp,  Option<Either<AppErrors, String>> deleteFailureOrSuccessOption,  List<VideoItem> videoList,  bool isConnectedToInternet)  $default,) {final _that = this;
switch (_that) {
case _LoadingStatusState():
return $default(_that.quizPassedFailureOrSuccess,_that.isLoading,_that.brandInfo,_that.userDashboardData,_that.dashboardCallFailureOrSuccess,_that.dashboardLoading,_that.userProfileData,_that.profileCallFailureOrSuccess,_that.profileLoading,_that.otpLoading,_that.selfDeletionProcessStarted,_that.otp,_that.deleteFailureOrSuccessOption,_that.videoList,_that.isConnectedToInternet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Option<Either<AppErrors, String>> quizPassedFailureOrSuccess,  bool isLoading,  OrgBrandInfoData? brandInfo,  UserDashboardData? userDashboardData,  Option<Either<AppErrors, UserDashboardData>> dashboardCallFailureOrSuccess,  bool dashboardLoading,  UserProfileData? userProfileData,  Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess,  bool profileLoading,  bool otpLoading,  bool selfDeletionProcessStarted,  String otp,  Option<Either<AppErrors, String>> deleteFailureOrSuccessOption,  List<VideoItem> videoList,  bool isConnectedToInternet)?  $default,) {final _that = this;
switch (_that) {
case _LoadingStatusState() when $default != null:
return $default(_that.quizPassedFailureOrSuccess,_that.isLoading,_that.brandInfo,_that.userDashboardData,_that.dashboardCallFailureOrSuccess,_that.dashboardLoading,_that.userProfileData,_that.profileCallFailureOrSuccess,_that.profileLoading,_that.otpLoading,_that.selfDeletionProcessStarted,_that.otp,_that.deleteFailureOrSuccessOption,_that.videoList,_that.isConnectedToInternet);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingStatusState implements LoadingStatusState {
  const _LoadingStatusState({required this.quizPassedFailureOrSuccess, this.isLoading = false, this.brandInfo, this.userDashboardData, required this.dashboardCallFailureOrSuccess, this.dashboardLoading = false, this.userProfileData, required this.profileCallFailureOrSuccess, this.profileLoading = false, this.otpLoading = false, this.selfDeletionProcessStarted = false, this.otp = '', required this.deleteFailureOrSuccessOption,  List<VideoItem> videoList = const [], this.isConnectedToInternet = false}): _videoList = videoList;
  

@override final  Option<Either<AppErrors, String>> quizPassedFailureOrSuccess;
/// [Change Effect]
/// `@Default(false)` ka matlab hai agar Cubit ne `isLoading` ki value nahi di, 
/// toh default false maan lo. Agar tum yahan se `@Default(false)` hata do, 
/// toh Freezed error dega ki ya toh default value batao, ya isko 'required' karo.
@override@JsonKey() final  bool isLoading;
@override final  OrgBrandInfoData? brandInfo;
@override final  UserDashboardData? userDashboardData;
@override final  Option<Either<AppErrors, UserDashboardData>> dashboardCallFailureOrSuccess;
@override@JsonKey() final  bool dashboardLoading;
@override final  UserProfileData? userProfileData;
@override final  Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess;
@override@JsonKey() final  bool profileLoading;
@override@JsonKey() final  bool otpLoading;
@override@JsonKey() final  bool selfDeletionProcessStarted;
@override@JsonKey() final  String otp;
@override final  Option<Either<AppErrors, String>> deleteFailureOrSuccessOption;
 final  List<VideoItem> _videoList;
@override@JsonKey() List<VideoItem> get videoList {
  if (_videoList is EqualUnmodifiableListView) return _videoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoList);
}

@override@JsonKey() final  bool isConnectedToInternet;

/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingStatusStateCopyWith<_LoadingStatusState> get copyWith => __$LoadingStatusStateCopyWithImpl<_LoadingStatusState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingStatusState&&(identical(other.quizPassedFailureOrSuccess, quizPassedFailureOrSuccess) || other.quizPassedFailureOrSuccess == quizPassedFailureOrSuccess)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.brandInfo, brandInfo) || other.brandInfo == brandInfo)&&(identical(other.userDashboardData, userDashboardData) || other.userDashboardData == userDashboardData)&&(identical(other.dashboardCallFailureOrSuccess, dashboardCallFailureOrSuccess) || other.dashboardCallFailureOrSuccess == dashboardCallFailureOrSuccess)&&(identical(other.dashboardLoading, dashboardLoading) || other.dashboardLoading == dashboardLoading)&&(identical(other.userProfileData, userProfileData) || other.userProfileData == userProfileData)&&(identical(other.profileCallFailureOrSuccess, profileCallFailureOrSuccess) || other.profileCallFailureOrSuccess == profileCallFailureOrSuccess)&&(identical(other.profileLoading, profileLoading) || other.profileLoading == profileLoading)&&(identical(other.otpLoading, otpLoading) || other.otpLoading == otpLoading)&&(identical(other.selfDeletionProcessStarted, selfDeletionProcessStarted) || other.selfDeletionProcessStarted == selfDeletionProcessStarted)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.deleteFailureOrSuccessOption, deleteFailureOrSuccessOption) || other.deleteFailureOrSuccessOption == deleteFailureOrSuccessOption)&&const DeepCollectionEquality().equals(other.videoList, _videoList)&&(identical(other.isConnectedToInternet, isConnectedToInternet) || other.isConnectedToInternet == isConnectedToInternet));
}


@override
int get hashCode {
    return Object.hash(runtimeType,quizPassedFailureOrSuccess,isLoading,brandInfo,userDashboardData,dashboardCallFailureOrSuccess,dashboardLoading,userProfileData,profileCallFailureOrSuccess,profileLoading,otpLoading,selfDeletionProcessStarted,otp,deleteFailureOrSuccessOption,const DeepCollectionEquality().hash(_videoList),isConnectedToInternet);
}

@override
String toString() {
    return 'LoadingStatusState(quizPassedFailureOrSuccess: $quizPassedFailureOrSuccess, isLoading: $isLoading, brandInfo: $brandInfo, userDashboardData: $userDashboardData, dashboardCallFailureOrSuccess: $dashboardCallFailureOrSuccess, dashboardLoading: $dashboardLoading, userProfileData: $userProfileData, profileCallFailureOrSuccess: $profileCallFailureOrSuccess, profileLoading: $profileLoading, otpLoading: $otpLoading, selfDeletionProcessStarted: $selfDeletionProcessStarted, otp: $otp, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption, videoList: $videoList, isConnectedToInternet: $isConnectedToInternet)';
}


}

/// @nodoc
abstract mixin class _$LoadingStatusStateCopyWith<$Res> implements $LoadingStatusStateCopyWith<$Res> {
  factory _$LoadingStatusStateCopyWith(_LoadingStatusState value, $Res Function(_LoadingStatusState) _then) = __$LoadingStatusStateCopyWithImpl;
@override @useResult
$Res call({
 Option<Either<AppErrors, String>> quizPassedFailureOrSuccess, bool isLoading, OrgBrandInfoData? brandInfo, UserDashboardData? userDashboardData, Option<Either<AppErrors, UserDashboardData>> dashboardCallFailureOrSuccess, bool dashboardLoading, UserProfileData? userProfileData, Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess, bool profileLoading, bool otpLoading, bool selfDeletionProcessStarted, String otp, Option<Either<AppErrors, String>> deleteFailureOrSuccessOption, List<VideoItem> videoList, bool isConnectedToInternet
});


@override $OrgBrandInfoDataCopyWith<$Res>? get brandInfo;@override $UserDashboardDataCopyWith<$Res>? get userDashboardData;@override $UserProfileDataCopyWith<$Res>? get userProfileData;

}
/// @nodoc
class __$LoadingStatusStateCopyWithImpl<$Res>
    implements _$LoadingStatusStateCopyWith<$Res> {
  __$LoadingStatusStateCopyWithImpl(this._self, this._then);

  final _LoadingStatusState _self;
  final $Res Function(_LoadingStatusState) _then;

/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quizPassedFailureOrSuccess = null,Object? isLoading = null,Object? brandInfo = freezed,Object? userDashboardData = freezed,Object? dashboardCallFailureOrSuccess = null,Object? dashboardLoading = null,Object? userProfileData = freezed,Object? profileCallFailureOrSuccess = null,Object? profileLoading = null,Object? otpLoading = null,Object? selfDeletionProcessStarted = null,Object? otp = null,Object? deleteFailureOrSuccessOption = null,Object? videoList = null,Object? isConnectedToInternet = null,}) {
  return _then(_LoadingStatusState(
quizPassedFailureOrSuccess: null == quizPassedFailureOrSuccess ? _self.quizPassedFailureOrSuccess : quizPassedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AppErrors, String>>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,brandInfo: freezed == brandInfo ? _self.brandInfo : brandInfo // ignore: cast_nullable_to_non_nullable
as OrgBrandInfoData?,userDashboardData: freezed == userDashboardData ? _self.userDashboardData : userDashboardData // ignore: cast_nullable_to_non_nullable
as UserDashboardData?,dashboardCallFailureOrSuccess: null == dashboardCallFailureOrSuccess ? _self.dashboardCallFailureOrSuccess : dashboardCallFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AppErrors, UserDashboardData>>,dashboardLoading: null == dashboardLoading ? _self.dashboardLoading : dashboardLoading // ignore: cast_nullable_to_non_nullable
as bool,userProfileData: freezed == userProfileData ? _self.userProfileData : userProfileData // ignore: cast_nullable_to_non_nullable
as UserProfileData?,profileCallFailureOrSuccess: null == profileCallFailureOrSuccess ? _self.profileCallFailureOrSuccess : profileCallFailureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<AppErrors, UserProfileData>>,profileLoading: null == profileLoading ? _self.profileLoading : profileLoading // ignore: cast_nullable_to_non_nullable
as bool,otpLoading: null == otpLoading ? _self.otpLoading : otpLoading // ignore: cast_nullable_to_non_nullable
as bool,selfDeletionProcessStarted: null == selfDeletionProcessStarted ? _self.selfDeletionProcessStarted : selfDeletionProcessStarted // ignore: cast_nullable_to_non_nullable
as bool,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption ? _self.deleteFailureOrSuccessOption : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AppErrors, String>>,videoList: null == videoList ? _self._videoList : videoList // ignore: cast_nullable_to_non_nullable
as List<VideoItem>,isConnectedToInternet: null == isConnectedToInternet ? _self.isConnectedToInternet : isConnectedToInternet // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrgBrandInfoDataCopyWith<$Res>? get brandInfo {
    if (_self.brandInfo == null) {
    return null;
  }

  return $OrgBrandInfoDataCopyWith<$Res>(_self.brandInfo!, (value) {
    return _then(_self.copyWith(brandInfo: value));
  });
}/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDashboardDataCopyWith<$Res>? get userDashboardData {
    if (_self.userDashboardData == null) {
    return null;
  }

  return $UserDashboardDataCopyWith<$Res>(_self.userDashboardData!, (value) {
    return _then(_self.copyWith(userDashboardData: value));
  });
}/// Create a copy of LoadingStatusState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileDataCopyWith<$Res>? get userProfileData {
    if (_self.userProfileData == null) {
    return null;
  }

  return $UserProfileDataCopyWith<$Res>(_self.userProfileData!, (value) {
    return _then(_self.copyWith(userProfileData: value));
  });
}
}

// dart format on

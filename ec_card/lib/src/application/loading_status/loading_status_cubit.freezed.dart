// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadingStatusState {
// Quiz/Video/Profile gatekeeper ka final result
  Option<Either<AppErrors, String>> get quizPassedFailureOrSuccess =>
      throw _privateConstructorUsedError;

  /// [Change Effect]
  /// `@Default(false)` ka matlab hai agar Cubit ne `isLoading` ki value nahi di,
  /// toh default false maan lo. Agar tum yahan se `@Default(false)` hata do,
  /// toh Freezed error dega ki ya toh default value batao, ya isko 'required' karo.
  bool get isLoading =>
      throw _privateConstructorUsedError; // API se aane wala data yahan save hota hai
  OrgBrandInfoData? get brandInfo => throw _privateConstructorUsedError;
  UserDashboardData? get userDashboardData =>
      throw _privateConstructorUsedError; // Dashboard ka data lane mein success hui ya fail?
  Option<Either<AppErrors, UserDashboardData>>
      get dashboardCallFailureOrSuccess => throw _privateConstructorUsedError;
  bool get dashboardLoading =>
      throw _privateConstructorUsedError; // Profile (Form) ka data aur uski loading state
  UserProfileData? get userProfileData => throw _privateConstructorUsedError;
  Option<Either<AppErrors, UserProfileData>> get profileCallFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get profileLoading =>
      throw _privateConstructorUsedError; // Account delete karne ka process
  bool get otpLoading => throw _privateConstructorUsedError;
  bool get selfDeletionProcessStarted => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  Option<Either<AppErrors, String>> get deleteFailureOrSuccessOption =>
      throw _privateConstructorUsedError; // Mandatory videos ki list jo user ko dekhni hai
  List<VideoItem> get videoList =>
      throw _privateConstructorUsedError; // Internet connection ka current status
  bool get isConnectedToInternet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoadingStatusStateCopyWith<LoadingStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStatusStateCopyWith<$Res> {
  factory $LoadingStatusStateCopyWith(
          LoadingStatusState value, $Res Function(LoadingStatusState) then) =
      _$LoadingStatusStateCopyWithImpl<$Res, LoadingStatusState>;
  @useResult
  $Res call(
      {Option<Either<AppErrors, String>> quizPassedFailureOrSuccess,
      bool isLoading,
      OrgBrandInfoData? brandInfo,
      UserDashboardData? userDashboardData,
      Option<Either<AppErrors, UserDashboardData>>
          dashboardCallFailureOrSuccess,
      bool dashboardLoading,
      UserProfileData? userProfileData,
      Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess,
      bool profileLoading,
      bool otpLoading,
      bool selfDeletionProcessStarted,
      String otp,
      Option<Either<AppErrors, String>> deleteFailureOrSuccessOption,
      List<VideoItem> videoList,
      bool isConnectedToInternet});

  $OrgBrandInfoDataCopyWith<$Res>? get brandInfo;
  $UserDashboardDataCopyWith<$Res>? get userDashboardData;
  $UserProfileDataCopyWith<$Res>? get userProfileData;
}

/// @nodoc
class _$LoadingStatusStateCopyWithImpl<$Res, $Val extends LoadingStatusState>
    implements $LoadingStatusStateCopyWith<$Res> {
  _$LoadingStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizPassedFailureOrSuccess = null,
    Object? isLoading = null,
    Object? brandInfo = freezed,
    Object? userDashboardData = freezed,
    Object? dashboardCallFailureOrSuccess = null,
    Object? dashboardLoading = null,
    Object? userProfileData = freezed,
    Object? profileCallFailureOrSuccess = null,
    Object? profileLoading = null,
    Object? otpLoading = null,
    Object? selfDeletionProcessStarted = null,
    Object? otp = null,
    Object? deleteFailureOrSuccessOption = null,
    Object? videoList = null,
    Object? isConnectedToInternet = null,
  }) {
    return _then(_value.copyWith(
      quizPassedFailureOrSuccess: null == quizPassedFailureOrSuccess
          ? _value.quizPassedFailureOrSuccess
          : quizPassedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, String>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      brandInfo: freezed == brandInfo
          ? _value.brandInfo
          : brandInfo // ignore: cast_nullable_to_non_nullable
              as OrgBrandInfoData?,
      userDashboardData: freezed == userDashboardData
          ? _value.userDashboardData
          : userDashboardData // ignore: cast_nullable_to_non_nullable
              as UserDashboardData?,
      dashboardCallFailureOrSuccess: null == dashboardCallFailureOrSuccess
          ? _value.dashboardCallFailureOrSuccess
          : dashboardCallFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, UserDashboardData>>,
      dashboardLoading: null == dashboardLoading
          ? _value.dashboardLoading
          : dashboardLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userProfileData: freezed == userProfileData
          ? _value.userProfileData
          : userProfileData // ignore: cast_nullable_to_non_nullable
              as UserProfileData?,
      profileCallFailureOrSuccess: null == profileCallFailureOrSuccess
          ? _value.profileCallFailureOrSuccess
          : profileCallFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, UserProfileData>>,
      profileLoading: null == profileLoading
          ? _value.profileLoading
          : profileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpLoading: null == otpLoading
          ? _value.otpLoading
          : otpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selfDeletionProcessStarted: null == selfDeletionProcessStarted
          ? _value.selfDeletionProcessStarted
          : selfDeletionProcessStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, String>>,
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoItem>,
      isConnectedToInternet: null == isConnectedToInternet
          ? _value.isConnectedToInternet
          : isConnectedToInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrgBrandInfoDataCopyWith<$Res>? get brandInfo {
    if (_value.brandInfo == null) {
      return null;
    }

    return $OrgBrandInfoDataCopyWith<$Res>(_value.brandInfo!, (value) {
      return _then(_value.copyWith(brandInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDashboardDataCopyWith<$Res>? get userDashboardData {
    if (_value.userDashboardData == null) {
      return null;
    }

    return $UserDashboardDataCopyWith<$Res>(_value.userDashboardData!, (value) {
      return _then(_value.copyWith(userDashboardData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<$Res>? get userProfileData {
    if (_value.userProfileData == null) {
      return null;
    }

    return $UserProfileDataCopyWith<$Res>(_value.userProfileData!, (value) {
      return _then(_value.copyWith(userProfileData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadingStatusStateImplCopyWith<$Res>
    implements $LoadingStatusStateCopyWith<$Res> {
  factory _$$LoadingStatusStateImplCopyWith(_$LoadingStatusStateImpl value,
          $Res Function(_$LoadingStatusStateImpl) then) =
      __$$LoadingStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppErrors, String>> quizPassedFailureOrSuccess,
      bool isLoading,
      OrgBrandInfoData? brandInfo,
      UserDashboardData? userDashboardData,
      Option<Either<AppErrors, UserDashboardData>>
          dashboardCallFailureOrSuccess,
      bool dashboardLoading,
      UserProfileData? userProfileData,
      Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess,
      bool profileLoading,
      bool otpLoading,
      bool selfDeletionProcessStarted,
      String otp,
      Option<Either<AppErrors, String>> deleteFailureOrSuccessOption,
      List<VideoItem> videoList,
      bool isConnectedToInternet});

  @override
  $OrgBrandInfoDataCopyWith<$Res>? get brandInfo;
  @override
  $UserDashboardDataCopyWith<$Res>? get userDashboardData;
  @override
  $UserProfileDataCopyWith<$Res>? get userProfileData;
}

/// @nodoc
class __$$LoadingStatusStateImplCopyWithImpl<$Res>
    extends _$LoadingStatusStateCopyWithImpl<$Res, _$LoadingStatusStateImpl>
    implements _$$LoadingStatusStateImplCopyWith<$Res> {
  __$$LoadingStatusStateImplCopyWithImpl(_$LoadingStatusStateImpl _value,
      $Res Function(_$LoadingStatusStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizPassedFailureOrSuccess = null,
    Object? isLoading = null,
    Object? brandInfo = freezed,
    Object? userDashboardData = freezed,
    Object? dashboardCallFailureOrSuccess = null,
    Object? dashboardLoading = null,
    Object? userProfileData = freezed,
    Object? profileCallFailureOrSuccess = null,
    Object? profileLoading = null,
    Object? otpLoading = null,
    Object? selfDeletionProcessStarted = null,
    Object? otp = null,
    Object? deleteFailureOrSuccessOption = null,
    Object? videoList = null,
    Object? isConnectedToInternet = null,
  }) {
    return _then(_$LoadingStatusStateImpl(
      quizPassedFailureOrSuccess: null == quizPassedFailureOrSuccess
          ? _value.quizPassedFailureOrSuccess
          : quizPassedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, String>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      brandInfo: freezed == brandInfo
          ? _value.brandInfo
          : brandInfo // ignore: cast_nullable_to_non_nullable
              as OrgBrandInfoData?,
      userDashboardData: freezed == userDashboardData
          ? _value.userDashboardData
          : userDashboardData // ignore: cast_nullable_to_non_nullable
              as UserDashboardData?,
      dashboardCallFailureOrSuccess: null == dashboardCallFailureOrSuccess
          ? _value.dashboardCallFailureOrSuccess
          : dashboardCallFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, UserDashboardData>>,
      dashboardLoading: null == dashboardLoading
          ? _value.dashboardLoading
          : dashboardLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userProfileData: freezed == userProfileData
          ? _value.userProfileData
          : userProfileData // ignore: cast_nullable_to_non_nullable
              as UserProfileData?,
      profileCallFailureOrSuccess: null == profileCallFailureOrSuccess
          ? _value.profileCallFailureOrSuccess
          : profileCallFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, UserProfileData>>,
      profileLoading: null == profileLoading
          ? _value.profileLoading
          : profileLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpLoading: null == otpLoading
          ? _value.otpLoading
          : otpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selfDeletionProcessStarted: null == selfDeletionProcessStarted
          ? _value.selfDeletionProcessStarted
          : selfDeletionProcessStarted // ignore: cast_nullable_to_non_nullable
              as bool,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      deleteFailureOrSuccessOption: null == deleteFailureOrSuccessOption
          ? _value.deleteFailureOrSuccessOption
          : deleteFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, String>>,
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoItem>,
      isConnectedToInternet: null == isConnectedToInternet
          ? _value.isConnectedToInternet
          : isConnectedToInternet // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadingStatusStateImpl implements _LoadingStatusState {
  const _$LoadingStatusStateImpl(
      {required this.quizPassedFailureOrSuccess,
      this.isLoading = false,
      this.brandInfo,
      this.userDashboardData,
      required this.dashboardCallFailureOrSuccess,
      this.dashboardLoading = false,
      this.userProfileData,
      required this.profileCallFailureOrSuccess,
      this.profileLoading = false,
      this.otpLoading = false,
      this.selfDeletionProcessStarted = false,
      this.otp = '',
      required this.deleteFailureOrSuccessOption,
      final List<VideoItem> videoList = const [],
      this.isConnectedToInternet = false})
      : _videoList = videoList;

// Quiz/Video/Profile gatekeeper ka final result
  @override
  final Option<Either<AppErrors, String>> quizPassedFailureOrSuccess;

  /// [Change Effect]
  /// `@Default(false)` ka matlab hai agar Cubit ne `isLoading` ki value nahi di,
  /// toh default false maan lo. Agar tum yahan se `@Default(false)` hata do,
  /// toh Freezed error dega ki ya toh default value batao, ya isko 'required' karo.
  @override
  @JsonKey()
  final bool isLoading;
// API se aane wala data yahan save hota hai
  @override
  final OrgBrandInfoData? brandInfo;
  @override
  final UserDashboardData? userDashboardData;
// Dashboard ka data lane mein success hui ya fail?
  @override
  final Option<Either<AppErrors, UserDashboardData>>
      dashboardCallFailureOrSuccess;
  @override
  @JsonKey()
  final bool dashboardLoading;
// Profile (Form) ka data aur uski loading state
  @override
  final UserProfileData? userProfileData;
  @override
  final Option<Either<AppErrors, UserProfileData>> profileCallFailureOrSuccess;
  @override
  @JsonKey()
  final bool profileLoading;
// Account delete karne ka process
  @override
  @JsonKey()
  final bool otpLoading;
  @override
  @JsonKey()
  final bool selfDeletionProcessStarted;
  @override
  @JsonKey()
  final String otp;
  @override
  final Option<Either<AppErrors, String>> deleteFailureOrSuccessOption;
// Mandatory videos ki list jo user ko dekhni hai
  final List<VideoItem> _videoList;
// Mandatory videos ki list jo user ko dekhni hai
  @override
  @JsonKey()
  List<VideoItem> get videoList {
    if (_videoList is EqualUnmodifiableListView) return _videoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

// Internet connection ka current status
  @override
  @JsonKey()
  final bool isConnectedToInternet;

  @override
  String toString() {
    return 'LoadingStatusState(quizPassedFailureOrSuccess: $quizPassedFailureOrSuccess, isLoading: $isLoading, brandInfo: $brandInfo, userDashboardData: $userDashboardData, dashboardCallFailureOrSuccess: $dashboardCallFailureOrSuccess, dashboardLoading: $dashboardLoading, userProfileData: $userProfileData, profileCallFailureOrSuccess: $profileCallFailureOrSuccess, profileLoading: $profileLoading, otpLoading: $otpLoading, selfDeletionProcessStarted: $selfDeletionProcessStarted, otp: $otp, deleteFailureOrSuccessOption: $deleteFailureOrSuccessOption, videoList: $videoList, isConnectedToInternet: $isConnectedToInternet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStatusStateImpl &&
            (identical(other.quizPassedFailureOrSuccess, quizPassedFailureOrSuccess) ||
                other.quizPassedFailureOrSuccess ==
                    quizPassedFailureOrSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.brandInfo, brandInfo) ||
                other.brandInfo == brandInfo) &&
            (identical(other.userDashboardData, userDashboardData) ||
                other.userDashboardData == userDashboardData) &&
            (identical(other.dashboardCallFailureOrSuccess,
                    dashboardCallFailureOrSuccess) ||
                other.dashboardCallFailureOrSuccess ==
                    dashboardCallFailureOrSuccess) &&
            (identical(other.dashboardLoading, dashboardLoading) ||
                other.dashboardLoading == dashboardLoading) &&
            (identical(other.userProfileData, userProfileData) ||
                other.userProfileData == userProfileData) &&
            (identical(other.profileCallFailureOrSuccess,
                    profileCallFailureOrSuccess) ||
                other.profileCallFailureOrSuccess ==
                    profileCallFailureOrSuccess) &&
            (identical(other.profileLoading, profileLoading) ||
                other.profileLoading == profileLoading) &&
            (identical(other.otpLoading, otpLoading) ||
                other.otpLoading == otpLoading) &&
            (identical(other.selfDeletionProcessStarted, selfDeletionProcessStarted) ||
                other.selfDeletionProcessStarted ==
                    selfDeletionProcessStarted) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.deleteFailureOrSuccessOption,
                    deleteFailureOrSuccessOption) ||
                other.deleteFailureOrSuccessOption ==
                    deleteFailureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList) &&
            (identical(other.isConnectedToInternet, isConnectedToInternet) ||
                other.isConnectedToInternet == isConnectedToInternet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      quizPassedFailureOrSuccess,
      isLoading,
      brandInfo,
      userDashboardData,
      dashboardCallFailureOrSuccess,
      dashboardLoading,
      userProfileData,
      profileCallFailureOrSuccess,
      profileLoading,
      otpLoading,
      selfDeletionProcessStarted,
      otp,
      deleteFailureOrSuccessOption,
      const DeepCollectionEquality().hash(_videoList),
      isConnectedToInternet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStatusStateImplCopyWith<_$LoadingStatusStateImpl> get copyWith =>
      __$$LoadingStatusStateImplCopyWithImpl<_$LoadingStatusStateImpl>(
          this, _$identity);
}

abstract class _LoadingStatusState implements LoadingStatusState {
  const factory _LoadingStatusState(
      {required final Option<Either<AppErrors, String>>
          quizPassedFailureOrSuccess,
      final bool isLoading,
      final OrgBrandInfoData? brandInfo,
      final UserDashboardData? userDashboardData,
      required final Option<Either<AppErrors, UserDashboardData>>
          dashboardCallFailureOrSuccess,
      final bool dashboardLoading,
      final UserProfileData? userProfileData,
      required final Option<Either<AppErrors, UserProfileData>>
          profileCallFailureOrSuccess,
      final bool profileLoading,
      final bool otpLoading,
      final bool selfDeletionProcessStarted,
      final String otp,
      required final Option<Either<AppErrors, String>>
          deleteFailureOrSuccessOption,
      final List<VideoItem> videoList,
      final bool isConnectedToInternet}) = _$LoadingStatusStateImpl;

  @override // Quiz/Video/Profile gatekeeper ka final result
  Option<Either<AppErrors, String>> get quizPassedFailureOrSuccess;
  @override

  /// [Change Effect]
  /// `@Default(false)` ka matlab hai agar Cubit ne `isLoading` ki value nahi di,
  /// toh default false maan lo. Agar tum yahan se `@Default(false)` hata do,
  /// toh Freezed error dega ki ya toh default value batao, ya isko 'required' karo.
  bool get isLoading;
  @override // API se aane wala data yahan save hota hai
  OrgBrandInfoData? get brandInfo;
  @override
  UserDashboardData? get userDashboardData;
  @override // Dashboard ka data lane mein success hui ya fail?
  Option<Either<AppErrors, UserDashboardData>>
      get dashboardCallFailureOrSuccess;
  @override
  bool get dashboardLoading;
  @override // Profile (Form) ka data aur uski loading state
  UserProfileData? get userProfileData;
  @override
  Option<Either<AppErrors, UserProfileData>> get profileCallFailureOrSuccess;
  @override
  bool get profileLoading;
  @override // Account delete karne ka process
  bool get otpLoading;
  @override
  bool get selfDeletionProcessStarted;
  @override
  String get otp;
  @override
  Option<Either<AppErrors, String>> get deleteFailureOrSuccessOption;
  @override // Mandatory videos ki list jo user ko dekhni hai
  List<VideoItem> get videoList;
  @override // Internet connection ka current status
  bool get isConnectedToInternet;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStatusStateImplCopyWith<_$LoadingStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

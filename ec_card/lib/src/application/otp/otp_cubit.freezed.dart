// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get smsSent => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  Option<Either<AppErrors, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get verificationCompletedWithoutOtp =>
      throw _privateConstructorUsedError;
  bool get serverVerificationCompleted => throw _privateConstructorUsedError;
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpStateCopyWith<OtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool smsSent,
      String smsCode,
      Option<Either<AppErrors, Unit>> authFailureOrSuccessOption,
      bool verificationCompletedWithoutOtp,
      bool serverVerificationCompleted,
      PhoneNumber? phoneNumber});
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? smsSent = null,
    Object? smsCode = null,
    Object? authFailureOrSuccessOption = null,
    Object? verificationCompletedWithoutOtp = null,
    Object? serverVerificationCompleted = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      smsSent: null == smsSent
          ? _value.smsSent
          : smsSent // ignore: cast_nullable_to_non_nullable
              as bool,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, Unit>>,
      verificationCompletedWithoutOtp: null == verificationCompletedWithoutOtp
          ? _value.verificationCompletedWithoutOtp
          : verificationCompletedWithoutOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      serverVerificationCompleted: null == serverVerificationCompleted
          ? _value.serverVerificationCompleted
          : serverVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpStateImplCopyWith<$Res>
    implements $OtpStateCopyWith<$Res> {
  factory _$$OtpStateImplCopyWith(
          _$OtpStateImpl value, $Res Function(_$OtpStateImpl) then) =
      __$$OtpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool smsSent,
      String smsCode,
      Option<Either<AppErrors, Unit>> authFailureOrSuccessOption,
      bool verificationCompletedWithoutOtp,
      bool serverVerificationCompleted,
      PhoneNumber? phoneNumber});
}

/// @nodoc
class __$$OtpStateImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpStateImpl>
    implements _$$OtpStateImplCopyWith<$Res> {
  __$$OtpStateImplCopyWithImpl(
      _$OtpStateImpl _value, $Res Function(_$OtpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? smsSent = null,
    Object? smsCode = null,
    Object? authFailureOrSuccessOption = null,
    Object? verificationCompletedWithoutOtp = null,
    Object? serverVerificationCompleted = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$OtpStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      smsSent: null == smsSent
          ? _value.smsSent
          : smsSent // ignore: cast_nullable_to_non_nullable
              as bool,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, Unit>>,
      verificationCompletedWithoutOtp: null == verificationCompletedWithoutOtp
          ? _value.verificationCompletedWithoutOtp
          : verificationCompletedWithoutOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      serverVerificationCompleted: null == serverVerificationCompleted
          ? _value.serverVerificationCompleted
          : serverVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
    ));
  }
}

/// @nodoc

class _$OtpStateImpl implements _OtpState {
  const _$OtpStateImpl(
      {required this.isLoading,
      required this.smsSent,
      required this.smsCode,
      required this.authFailureOrSuccessOption,
      required this.verificationCompletedWithoutOtp,
      required this.serverVerificationCompleted,
      this.phoneNumber});

  @override
  final bool isLoading;
  @override
  final bool smsSent;
  @override
  final String smsCode;
  @override
  final Option<Either<AppErrors, Unit>> authFailureOrSuccessOption;
  @override
  final bool verificationCompletedWithoutOtp;
  @override
  final bool serverVerificationCompleted;
  @override
  final PhoneNumber? phoneNumber;

  @override
  String toString() {
    return 'OtpState(isLoading: $isLoading, smsSent: $smsSent, smsCode: $smsCode, authFailureOrSuccessOption: $authFailureOrSuccessOption, verificationCompletedWithoutOtp: $verificationCompletedWithoutOtp, serverVerificationCompleted: $serverVerificationCompleted, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.smsSent, smsSent) || other.smsSent == smsSent) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption) &&
            (identical(other.verificationCompletedWithoutOtp,
                    verificationCompletedWithoutOtp) ||
                other.verificationCompletedWithoutOtp ==
                    verificationCompletedWithoutOtp) &&
            (identical(other.serverVerificationCompleted,
                    serverVerificationCompleted) ||
                other.serverVerificationCompleted ==
                    serverVerificationCompleted) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      smsSent,
      smsCode,
      authFailureOrSuccessOption,
      verificationCompletedWithoutOtp,
      serverVerificationCompleted,
      phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      __$$OtpStateImplCopyWithImpl<_$OtpStateImpl>(this, _$identity);
}

abstract class _OtpState implements OtpState {
  const factory _OtpState(
      {required final bool isLoading,
      required final bool smsSent,
      required final String smsCode,
      required final Option<Either<AppErrors, Unit>> authFailureOrSuccessOption,
      required final bool verificationCompletedWithoutOtp,
      required final bool serverVerificationCompleted,
      final PhoneNumber? phoneNumber}) = _$OtpStateImpl;

  @override
  bool get isLoading;
  @override
  bool get smsSent;
  @override
  String get smsCode;
  @override
  Option<Either<AppErrors, Unit>> get authFailureOrSuccessOption;
  @override
  bool get verificationCompletedWithoutOtp;
  @override
  bool get serverVerificationCompleted;
  @override
  PhoneNumber? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

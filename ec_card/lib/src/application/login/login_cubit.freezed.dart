// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  Option<Either<AppErrors, PhoneNumber>>? get phoneValidationFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get showPhoneFieldError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  PhoneNumber? get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {Option<Either<AppErrors, PhoneNumber>>? phoneValidationFailureOrSuccess,
      bool showPhoneFieldError,
      bool isLoading,
      PhoneNumber? phoneNumber});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneValidationFailureOrSuccess = freezed,
    Object? showPhoneFieldError = null,
    Object? isLoading = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneValidationFailureOrSuccess: freezed ==
              phoneValidationFailureOrSuccess
          ? _value.phoneValidationFailureOrSuccess
          : phoneValidationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, PhoneNumber>>?,
      showPhoneFieldError: null == showPhoneFieldError
          ? _value.showPhoneFieldError
          : showPhoneFieldError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<AppErrors, PhoneNumber>>? phoneValidationFailureOrSuccess,
      bool showPhoneFieldError,
      bool isLoading,
      PhoneNumber? phoneNumber});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneValidationFailureOrSuccess = freezed,
    Object? showPhoneFieldError = null,
    Object? isLoading = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$LoginStateImpl(
      phoneValidationFailureOrSuccess: freezed ==
              phoneValidationFailureOrSuccess
          ? _value.phoneValidationFailureOrSuccess
          : phoneValidationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, PhoneNumber>>?,
      showPhoneFieldError: null == showPhoneFieldError
          ? _value.showPhoneFieldError
          : showPhoneFieldError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber?,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.phoneValidationFailureOrSuccess,
      this.showPhoneFieldError = false,
      this.isLoading = false,
      this.phoneNumber});

  @override
  final Option<Either<AppErrors, PhoneNumber>>? phoneValidationFailureOrSuccess;
  @override
  @JsonKey()
  final bool showPhoneFieldError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final PhoneNumber? phoneNumber;

  @override
  String toString() {
    return 'LoginState(phoneValidationFailureOrSuccess: $phoneValidationFailureOrSuccess, showPhoneFieldError: $showPhoneFieldError, isLoading: $isLoading, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.phoneValidationFailureOrSuccess,
                    phoneValidationFailureOrSuccess) ||
                other.phoneValidationFailureOrSuccess ==
                    phoneValidationFailureOrSuccess) &&
            (identical(other.showPhoneFieldError, showPhoneFieldError) ||
                other.showPhoneFieldError == showPhoneFieldError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneValidationFailureOrSuccess,
      showPhoneFieldError, isLoading, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final Option<Either<AppErrors, PhoneNumber>>?
          phoneValidationFailureOrSuccess,
      final bool showPhoneFieldError,
      final bool isLoading,
      final PhoneNumber? phoneNumber}) = _$LoginStateImpl;

  @override
  Option<Either<AppErrors, PhoneNumber>>? get phoneValidationFailureOrSuccess;
  @override
  bool get showPhoneFieldError;
  @override
  bool get isLoading;
  @override
  PhoneNumber? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

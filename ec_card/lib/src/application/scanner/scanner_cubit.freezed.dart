// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanner_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScannerState {
  bool get isClaimTransactionLoading => throw _privateConstructorUsedError;
  Option<Either<String, String>> get claimTransactionFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isConnectedToInternet => throw _privateConstructorUsedError;
  bool get isEligibleLoading => throw _privateConstructorUsedError;
  Option<Either<AppErrors, String>> get eligibleFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Map<String, dynamic>? get eligibilityData =>
      throw _privateConstructorUsedError;
  Option<Either<String, bool>> get productListFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> get venueDetails => throw _privateConstructorUsedError;
  List<ProductModel> get productsList => throw _privateConstructorUsedError;
  String get qrCode => throw _privateConstructorUsedError;
  bool get isConfirmProductLoading => throw _privateConstructorUsedError;
  Option<Either<String, String>> get productTransactionClaimFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScannerStateCopyWith<ScannerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScannerStateCopyWith<$Res> {
  factory $ScannerStateCopyWith(
          ScannerState value, $Res Function(ScannerState) then) =
      _$ScannerStateCopyWithImpl<$Res, ScannerState>;
  @useResult
  $Res call(
      {bool isClaimTransactionLoading,
      Option<Either<String, String>> claimTransactionFailureOrSuccess,
      bool isConnectedToInternet,
      bool isEligibleLoading,
      Option<Either<AppErrors, String>> eligibleFailureOrSuccess,
      Map<String, dynamic>? eligibilityData,
      Option<Either<String, bool>> productListFailureOrSuccess,
      Map<String, dynamic> venueDetails,
      List<ProductModel> productsList,
      String qrCode,
      bool isConfirmProductLoading,
      Option<Either<String, String>> productTransactionClaimFailureOrSuccess});
}

/// @nodoc
class _$ScannerStateCopyWithImpl<$Res, $Val extends ScannerState>
    implements $ScannerStateCopyWith<$Res> {
  _$ScannerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isClaimTransactionLoading = null,
    Object? claimTransactionFailureOrSuccess = null,
    Object? isConnectedToInternet = null,
    Object? isEligibleLoading = null,
    Object? eligibleFailureOrSuccess = null,
    Object? eligibilityData = freezed,
    Object? productListFailureOrSuccess = null,
    Object? venueDetails = null,
    Object? productsList = null,
    Object? qrCode = null,
    Object? isConfirmProductLoading = null,
    Object? productTransactionClaimFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isClaimTransactionLoading: null == isClaimTransactionLoading
          ? _value.isClaimTransactionLoading
          : isClaimTransactionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      claimTransactionFailureOrSuccess: null == claimTransactionFailureOrSuccess
          ? _value.claimTransactionFailureOrSuccess
          : claimTransactionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
      isConnectedToInternet: null == isConnectedToInternet
          ? _value.isConnectedToInternet
          : isConnectedToInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      isEligibleLoading: null == isEligibleLoading
          ? _value.isEligibleLoading
          : isEligibleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      eligibleFailureOrSuccess: null == eligibleFailureOrSuccess
          ? _value.eligibleFailureOrSuccess
          : eligibleFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, String>>,
      eligibilityData: freezed == eligibilityData
          ? _value.eligibilityData
          : eligibilityData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      productListFailureOrSuccess: null == productListFailureOrSuccess
          ? _value.productListFailureOrSuccess
          : productListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, bool>>,
      venueDetails: null == venueDetails
          ? _value.venueDetails
          : venueDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      productsList: null == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      isConfirmProductLoading: null == isConfirmProductLoading
          ? _value.isConfirmProductLoading
          : isConfirmProductLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productTransactionClaimFailureOrSuccess: null ==
              productTransactionClaimFailureOrSuccess
          ? _value.productTransactionClaimFailureOrSuccess
          : productTransactionClaimFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScannerStateImplCopyWith<$Res>
    implements $ScannerStateCopyWith<$Res> {
  factory _$$ScannerStateImplCopyWith(
          _$ScannerStateImpl value, $Res Function(_$ScannerStateImpl) then) =
      __$$ScannerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isClaimTransactionLoading,
      Option<Either<String, String>> claimTransactionFailureOrSuccess,
      bool isConnectedToInternet,
      bool isEligibleLoading,
      Option<Either<AppErrors, String>> eligibleFailureOrSuccess,
      Map<String, dynamic>? eligibilityData,
      Option<Either<String, bool>> productListFailureOrSuccess,
      Map<String, dynamic> venueDetails,
      List<ProductModel> productsList,
      String qrCode,
      bool isConfirmProductLoading,
      Option<Either<String, String>> productTransactionClaimFailureOrSuccess});
}

/// @nodoc
class __$$ScannerStateImplCopyWithImpl<$Res>
    extends _$ScannerStateCopyWithImpl<$Res, _$ScannerStateImpl>
    implements _$$ScannerStateImplCopyWith<$Res> {
  __$$ScannerStateImplCopyWithImpl(
      _$ScannerStateImpl _value, $Res Function(_$ScannerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isClaimTransactionLoading = null,
    Object? claimTransactionFailureOrSuccess = null,
    Object? isConnectedToInternet = null,
    Object? isEligibleLoading = null,
    Object? eligibleFailureOrSuccess = null,
    Object? eligibilityData = freezed,
    Object? productListFailureOrSuccess = null,
    Object? venueDetails = null,
    Object? productsList = null,
    Object? qrCode = null,
    Object? isConfirmProductLoading = null,
    Object? productTransactionClaimFailureOrSuccess = null,
  }) {
    return _then(_$ScannerStateImpl(
      isClaimTransactionLoading: null == isClaimTransactionLoading
          ? _value.isClaimTransactionLoading
          : isClaimTransactionLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      claimTransactionFailureOrSuccess: null == claimTransactionFailureOrSuccess
          ? _value.claimTransactionFailureOrSuccess
          : claimTransactionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
      isConnectedToInternet: null == isConnectedToInternet
          ? _value.isConnectedToInternet
          : isConnectedToInternet // ignore: cast_nullable_to_non_nullable
              as bool,
      isEligibleLoading: null == isEligibleLoading
          ? _value.isEligibleLoading
          : isEligibleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      eligibleFailureOrSuccess: null == eligibleFailureOrSuccess
          ? _value.eligibleFailureOrSuccess
          : eligibleFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, String>>,
      eligibilityData: freezed == eligibilityData
          ? _value._eligibilityData
          : eligibilityData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      productListFailureOrSuccess: null == productListFailureOrSuccess
          ? _value.productListFailureOrSuccess
          : productListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, bool>>,
      venueDetails: null == venueDetails
          ? _value._venueDetails
          : venueDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      qrCode: null == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String,
      isConfirmProductLoading: null == isConfirmProductLoading
          ? _value.isConfirmProductLoading
          : isConfirmProductLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      productTransactionClaimFailureOrSuccess: null ==
              productTransactionClaimFailureOrSuccess
          ? _value.productTransactionClaimFailureOrSuccess
          : productTransactionClaimFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, String>>,
    ));
  }
}

/// @nodoc

class _$ScannerStateImpl implements _ScannerState {
  const _$ScannerStateImpl(
      {this.isClaimTransactionLoading = false,
      required this.claimTransactionFailureOrSuccess,
      this.isConnectedToInternet = false,
      this.isEligibleLoading = false,
      required this.eligibleFailureOrSuccess,
      final Map<String, dynamic>? eligibilityData,
      required this.productListFailureOrSuccess,
      final Map<String, dynamic> venueDetails = const {},
      final List<ProductModel> productsList = const [],
      this.qrCode = '',
      this.isConfirmProductLoading = false,
      required this.productTransactionClaimFailureOrSuccess})
      : _eligibilityData = eligibilityData,
        _venueDetails = venueDetails,
        _productsList = productsList;

  @override
  @JsonKey()
  final bool isClaimTransactionLoading;
  @override
  final Option<Either<String, String>> claimTransactionFailureOrSuccess;
  @override
  @JsonKey()
  final bool isConnectedToInternet;
  @override
  @JsonKey()
  final bool isEligibleLoading;
  @override
  final Option<Either<AppErrors, String>> eligibleFailureOrSuccess;
  final Map<String, dynamic>? _eligibilityData;
  @override
  Map<String, dynamic>? get eligibilityData {
    final value = _eligibilityData;
    if (value == null) return null;
    if (_eligibilityData is EqualUnmodifiableMapView) return _eligibilityData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final Option<Either<String, bool>> productListFailureOrSuccess;
  final Map<String, dynamic> _venueDetails;
  @override
  @JsonKey()
  Map<String, dynamic> get venueDetails {
    if (_venueDetails is EqualUnmodifiableMapView) return _venueDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_venueDetails);
  }

  final List<ProductModel> _productsList;
  @override
  @JsonKey()
  List<ProductModel> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  @override
  @JsonKey()
  final String qrCode;
  @override
  @JsonKey()
  final bool isConfirmProductLoading;
  @override
  final Option<Either<String, String>> productTransactionClaimFailureOrSuccess;

  @override
  String toString() {
    return 'ScannerState(isClaimTransactionLoading: $isClaimTransactionLoading, claimTransactionFailureOrSuccess: $claimTransactionFailureOrSuccess, isConnectedToInternet: $isConnectedToInternet, isEligibleLoading: $isEligibleLoading, eligibleFailureOrSuccess: $eligibleFailureOrSuccess, eligibilityData: $eligibilityData, productListFailureOrSuccess: $productListFailureOrSuccess, venueDetails: $venueDetails, productsList: $productsList, qrCode: $qrCode, isConfirmProductLoading: $isConfirmProductLoading, productTransactionClaimFailureOrSuccess: $productTransactionClaimFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScannerStateImpl &&
            (identical(other.isClaimTransactionLoading, isClaimTransactionLoading) ||
                other.isClaimTransactionLoading == isClaimTransactionLoading) &&
            (identical(other.claimTransactionFailureOrSuccess,
                    claimTransactionFailureOrSuccess) ||
                other.claimTransactionFailureOrSuccess ==
                    claimTransactionFailureOrSuccess) &&
            (identical(other.isConnectedToInternet, isConnectedToInternet) ||
                other.isConnectedToInternet == isConnectedToInternet) &&
            (identical(other.isEligibleLoading, isEligibleLoading) ||
                other.isEligibleLoading == isEligibleLoading) &&
            (identical(other.eligibleFailureOrSuccess, eligibleFailureOrSuccess) ||
                other.eligibleFailureOrSuccess == eligibleFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other._eligibilityData, _eligibilityData) &&
            (identical(other.productListFailureOrSuccess,
                    productListFailureOrSuccess) ||
                other.productListFailureOrSuccess ==
                    productListFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other._venueDetails, _venueDetails) &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.isConfirmProductLoading, isConfirmProductLoading) ||
                other.isConfirmProductLoading == isConfirmProductLoading) &&
            (identical(other.productTransactionClaimFailureOrSuccess,
                    productTransactionClaimFailureOrSuccess) ||
                other.productTransactionClaimFailureOrSuccess ==
                    productTransactionClaimFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isClaimTransactionLoading,
      claimTransactionFailureOrSuccess,
      isConnectedToInternet,
      isEligibleLoading,
      eligibleFailureOrSuccess,
      const DeepCollectionEquality().hash(_eligibilityData),
      productListFailureOrSuccess,
      const DeepCollectionEquality().hash(_venueDetails),
      const DeepCollectionEquality().hash(_productsList),
      qrCode,
      isConfirmProductLoading,
      productTransactionClaimFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScannerStateImplCopyWith<_$ScannerStateImpl> get copyWith =>
      __$$ScannerStateImplCopyWithImpl<_$ScannerStateImpl>(this, _$identity);
}

abstract class _ScannerState implements ScannerState {
  const factory _ScannerState(
      {final bool isClaimTransactionLoading,
      required final Option<Either<String, String>>
          claimTransactionFailureOrSuccess,
      final bool isConnectedToInternet,
      final bool isEligibleLoading,
      required final Option<Either<AppErrors, String>> eligibleFailureOrSuccess,
      final Map<String, dynamic>? eligibilityData,
      required final Option<Either<String, bool>> productListFailureOrSuccess,
      final Map<String, dynamic> venueDetails,
      final List<ProductModel> productsList,
      final String qrCode,
      final bool isConfirmProductLoading,
      required final Option<Either<String, String>>
          productTransactionClaimFailureOrSuccess}) = _$ScannerStateImpl;

  @override
  bool get isClaimTransactionLoading;
  @override
  Option<Either<String, String>> get claimTransactionFailureOrSuccess;
  @override
  bool get isConnectedToInternet;
  @override
  bool get isEligibleLoading;
  @override
  Option<Either<AppErrors, String>> get eligibleFailureOrSuccess;
  @override
  Map<String, dynamic>? get eligibilityData;
  @override
  Option<Either<String, bool>> get productListFailureOrSuccess;
  @override
  Map<String, dynamic> get venueDetails;
  @override
  List<ProductModel> get productsList;
  @override
  String get qrCode;
  @override
  bool get isConfirmProductLoading;
  @override
  Option<Either<String, String>> get productTransactionClaimFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ScannerStateImplCopyWith<_$ScannerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

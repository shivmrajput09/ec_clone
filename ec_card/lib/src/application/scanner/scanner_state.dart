part of 'scanner_cubit.dart';

@freezed
class ScannerState with _$ScannerState {
  const factory ScannerState({
    @Default(false) bool isClaimTransactionLoading,
    required Option<Either<String, String>> claimTransactionFailureOrSuccess,
    @Default(false) bool isConnectedToInternet,
    @Default(false) bool isEligibleLoading,
    required Option<Either<AppErrors, String>> eligibleFailureOrSuccess,
    Map<String, dynamic>? eligibilityData,
    required Option<Either<String, bool>> productListFailureOrSuccess,
    @Default({}) Map<String, dynamic> venueDetails,
    @Default([]) List<ProductModel> productsList,
    @Default('') String qrCode,
    @Default(false) bool isConfirmProductLoading,
    required Option<Either<String, String>>
        productTransactionClaimFailureOrSuccess,
  }) = _ScannerState;
  factory ScannerState.initial() => ScannerState(
        isClaimTransactionLoading: false,
        claimTransactionFailureOrSuccess: none(),
        isConnectedToInternet: false,
        isEligibleLoading: false,
        eligibleFailureOrSuccess: none(),
        eligibilityData: {},
        productListFailureOrSuccess: none(),
        venueDetails: {},
        productsList: [],
        qrCode: '',
        isConfirmProductLoading: false,
        productTransactionClaimFailureOrSuccess: none(),
      );
}

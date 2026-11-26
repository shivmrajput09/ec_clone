part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    Option<Either<AppErrors, PhoneNumber>>? phoneValidationFailureOrSuccess,
    Option<Either<AppErrors, String>>? registrationFailureOrSuccess,
    @Default(false) bool showPhoneFieldError,
    PhoneNumber? phoneNumber,
    @Default(false) bool isLoading,
    @Default('') String postcode,
    @Default('') String accessCode,
    @Default('') String gender,
    @Default('') String dob,
    @Default(false) bool showPostcodeError,
    @Default(false) bool showDobError,
    @Default(false) bool showGenderError,
    @Default(false) bool showAccessCodeError,
    @Default(false) bool verifyDOBError,
    @Default("") String verifyDOBErrorMessage,
    @Default(false) bool showAccessCodeField,
    @Default('') String transactions,
    @Default(false) bool showTransactionsError,
    @Default(false) bool isMaxTransactionsAllowed,
    @Default(true) bool showUnlimitedOption,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
      phoneNumber: PhoneNumber(''),
      showPhoneFieldError: false,
      phoneValidationFailureOrSuccess: none(),
      registrationFailureOrSuccess: none(),
      isLoading: false,
      postcode: '',
      dob: '',
      showPostcodeError: false,
      showDobError: false,
      accessCode: '',
      showAccessCodeError: false,
      gender: '',
      showGenderError: false,
      verifyDOBError: false,
      verifyDOBErrorMessage: "",
      showAccessCodeField: false,
      showTransactionsError: false,
      transactions: "",
      showUnlimitedOption: true,
      isMaxTransactionsAllowed: false);
}

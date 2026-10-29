part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    Option<Either<AppErrors, PhoneNumber>>? phoneValidationFailureOrSuccess,
    @Default(false) bool showPhoneFieldError,
    @Default(false) bool isLoading,
    PhoneNumber? phoneNumber,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        phoneNumber: PhoneNumber(''),
        showPhoneFieldError: false,
        phoneValidationFailureOrSuccess: none(),
        isLoading: false,
      );
}

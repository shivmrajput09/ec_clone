part of 'account_cubit.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    @Default(false) bool isLoading,
    @Default(false) bool titleError,
    @Default(false) bool descriptionError,
    @Default(false) bool emailError,
    @Default('') String title,
    @Default('') String description,
    @Default('') String email,
    @Default('') String imagePath,
    required Option<Either<AppErrors, Unit>> supportSubmitFailureOrSuccess,
  }) = _AccountState;

  factory AccountState.initial() => AccountState(
        isLoading: false,
        titleError: false,
        descriptionError: false,
        emailError: false,
        title: "",
        description: "",
        supportSubmitFailureOrSuccess: none(),
        email: '',
        imagePath: '',
      );
}

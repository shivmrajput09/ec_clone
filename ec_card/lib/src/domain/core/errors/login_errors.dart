import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_errors.freezed.dart';

@freezed
class LoginErrors with _$LoginErrors {
  const factory LoginErrors.userNotFound() = UserNotFound;
  const factory LoginErrors.userDisabled() = UserDisabled;
  const factory LoginErrors.missingPhoneNumber() = MissingPhoneNumber;
  const factory LoginErrors.invalidPhoneNumber() = InvalidPhoneNumber;
  const factory LoginErrors.missingVerificationCode() = MissingVerificationCode;
  const factory LoginErrors.invalidVerificationCode() = InvalidVerificationCode;
  const factory LoginErrors.codeExpired() = CodeExpired;
  const factory LoginErrors.unknownError({
    required String code,
    required String message,
  }) = UnknownError;
}
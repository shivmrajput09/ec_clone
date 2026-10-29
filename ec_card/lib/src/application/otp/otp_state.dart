part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState({
    required bool isLoading,
    required bool smsSent,
    required String smsCode,
    required Option<Either<AppErrors, Unit>> authFailureOrSuccessOption,
    required bool verificationCompletedWithoutOtp,
    required bool serverVerificationCompleted,
    PhoneNumber? phoneNumber,
  }) = _OtpState;

  factory OtpState.initial() => OtpState(
        isLoading: false,
        phoneNumber: PhoneNumber(''),
        smsSent: false,
        smsCode: '',
        verificationCompletedWithoutOtp: false,
        serverVerificationCompleted: false,
        authFailureOrSuccessOption: none(),
      );
}

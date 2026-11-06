import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/login/login_repo.dart';

part 'otp_cubit.freezed.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;
  const factory OtpState.loading() = _Loading;
  const factory OtpState.success() = _Success;
  const factory OtpState.error(String message) = _Error;
}

@injectable
class OtpCubit extends Cubit<OtpState> {
  final LoginRepository _loginRepo;

  OtpCubit(this._loginRepo) : super(const OtpState.initial());

  Future<void> verifyOtp({
    required String phoneNumber,
    required String otp,
  }) async {
    final cleanOtp = otp.trim();
    if (cleanOtp.length != 6) {
      emit(const OtpState.error('Please enter complete 6-digit verification code'));
      return;
    }

    emit(const OtpState.loading());

    final result = await _loginRepo.signInWithOTP(phoneNumber, cleanOtp);
    result.fold(
      (failure) => emit(const OtpState.error('Invalid OTP. Please check and try again.')),
      (success) => emit(const OtpState.success()),
    );
  }

  Future<void> resendOtp(String phoneNumber) async {
    emit(const OtpState.loading());
    final result = await _loginRepo.sendOTP(phoneNumber);
    result.fold(
      (failure) => emit(const OtpState.error('Could not resend OTP. Please try again later.')),
      (success) => emit(const OtpState.initial()),
    );
  }
}

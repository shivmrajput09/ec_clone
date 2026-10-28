// lib/src/application/otp/otp_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
  OtpCubit() : super(const OtpState.initial());

  // OTP Verify karne ka logic
  Future<void> verifyOtp(String otp) async {
    emit(const OtpState.loading());
    
    // Yahan Future mein tumhara API call aayega. Abhi ke liye hum 2 second ka delay daal rahe hain
    await Future.delayed(const Duration(seconds: 2));

    if (otp == "123456") { // Dummy check
      emit(const OtpState.success());
    } else {
      emit(const OtpState.error("Invalid OTP. Try again."));
    }
  }
}
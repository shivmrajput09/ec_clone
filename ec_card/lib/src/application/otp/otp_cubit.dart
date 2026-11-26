import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/core/errors/login_errors.dart';
import 'package:ec_card_app/src/domain/login/login_repo.dart';
import 'package:ec_card_app/src/domain/login/value_object.dart';
import 'package:ec_card_app/src/domain/register/register_repo.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'otp_state.dart';
part 'otp_cubit.freezed.dart';

@injectable
class OtpCubit extends Cubit<OtpState> {
  OtpCubit(
    this.loginRepo,
    this.registerRepo,
  ) : super(OtpState.initial());

  final LoginRepository loginRepo;
  final RegisterRepository registerRepo;

  // @override
  // Future<void> close() {
  //   // _subscription?.cancel();
  //   return super.close();
  // }

  void started({required String phoneNumber}) {
    emit(state.copyWith(isLoading: true));
    Future.delayed(const Duration(milliseconds: 500), () {
      emit(state.copyWith(
          isLoading: false, phoneNumber: PhoneNumber(phoneNumber)));
    });

    //send OTP function
  }

  void resendOtp() async {
    final resendOTP = await loginRepo.sendOTP(state.phoneNumber!.value);

    resendOTP.fold((l) {
      emit(state.copyWith(
        authFailureOrSuccessOption: some(left(const AppErrors.authErrors(
            loginError: LoginErrors.invalidPhoneNumber()))),
        verificationCompletedWithoutOtp: false,
        serverVerificationCompleted: false,
      ));
    }, (r) {
      started(phoneNumber: state.phoneNumber!.value);
    });
  }

  void otpChanged(String otp) {
    emit(state.copyWith(
      smsCode: otp,
      authFailureOrSuccessOption: none(),
      verificationCompletedWithoutOtp: false,
      serverVerificationCompleted: false,
      smsSent: false,
      isLoading: false,
    ));
  }

  // void otpSent() {
  //   emit(state.copyWith(
  //     authFailureOrSuccessOption: none(),
  //     verificationCompletedWithoutOtp: false,
  //     serverVerificationCompleted: false,
  //     smsSent: true,
  //     isLoading: false,
  //   ));
  // }

  void verificationFailed(AppErrors error) {
    emit(state.copyWith(
      authFailureOrSuccessOption: some(left(error)),
      verificationCompletedWithoutOtp: false,
      serverVerificationCompleted: false,
      isLoading: false,
    ));
  }

  void verifyOtp(String calledFrom) async {
    emit(state.copyWith(isLoading: true));

    if (calledFrom == "login") {
      final verifyOtp = await loginRepo.signInWithOTP(
        state.phoneNumber!.value,
        state.smsCode,
      );

      verifyOtp.fold((l) {
        verificationFailed(l);
      }, (r) {
        appLog("OTP Cubit: Verify OTP ------> $r");
        verificationComplete();
      });
    } else {
      final verifyRegisterOTP = await registerRepo.verifyRegistration(
        state.phoneNumber!.value,
        state.smsCode,
      );

      verifyRegisterOTP.fold((l) {
        verificationFailed(l);
      }, (r) {
        appLog("OTP Cubit: Verify OTP ------> $r");
        verificationComplete();
      });
    }
  }

  void verificationComplete() {
    emit(state.copyWith(
      isLoading: false,
      verificationCompletedWithoutOtp: false,
      serverVerificationCompleted: false,
      authFailureOrSuccessOption: some(right(unit)),
    ));
  }
}

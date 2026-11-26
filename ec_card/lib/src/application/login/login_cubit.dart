import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/login/login_repo.dart';
import 'package:ec_card_app/src/domain/login/value_object.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.loginRepo,
  }) : super(LoginState.initial());

  final LoginRepository loginRepo;

  void phoneFieldValueChanged(String input) {
    final updatedPhoneNumber = PhoneNumber(input);

    emit(state.copyWith(
      phoneNumber: updatedPhoneNumber,
      phoneValidationFailureOrSuccess: none(),
      showPhoneFieldError: false,
    ));
  }

  void nextButtonClicked() async {
    emit(state.copyWith(
      isLoading: true,
      phoneValidationFailureOrSuccess: none(),
    ));
    // if (await state.phoneNumber!.isValid() == true) {

    // } else {
    //   emit(state.copyWith(
    //     phoneValidationFailureOrSuccess: some(left(const AppErrors.authErrors(
    //         loginError: LoginErrors.invalidPhoneNumber()))),
    //     showPhoneFieldError: true,
    //     isLoading: false,
    //   ));
    // }
    appLog(
        "Login Cubit: NextButtonClicked -------> Phone Number: ${state.phoneNumber!.value}");
    final sendOTP = await loginRepo.sendOTP(state.phoneNumber!.value);
    sendOTP.fold((l) {
      emit(state.copyWith(
        phoneValidationFailureOrSuccess: some(left(l)),
        showPhoneFieldError: true,
        isLoading: false,
      ));
    }, (r) {
      emit(state.copyWith(
        phoneValidationFailureOrSuccess: some(right(state.phoneNumber!)),
        showPhoneFieldError: false,
        isLoading: false,
      ));
    });
  }
}

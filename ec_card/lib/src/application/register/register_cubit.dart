import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
// import 'package:ec_card_app/src/domain/core/errors/login_errors.dart';
import 'package:ec_card_app/src/domain/login/value_object.dart';
import 'package:ec_card_app/src/domain/register/register_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(
    this.registerRepo,
  ) : super(RegisterState.initial());

  final RegisterRepository registerRepo;

  void phoneFieldValueChanged(String input) {
    final updatedPhoneNumber = PhoneNumber(input);

    emit(state.copyWith(
      phoneNumber: updatedPhoneNumber,
      phoneValidationFailureOrSuccess: none(),
      showPhoneFieldError: false,
    ));
  }

  void registerButtonClicked() async {
    emit(state.copyWith(
        isLoading: true, phoneValidationFailureOrSuccess: none()));
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
    final sendOTP =
        await registerRepo.sendOTPforRegister(state.phoneNumber!.value);
    sendOTP.fold((l) {
      // appLog("Error in register");
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

  void postCodeChanged(String input) {
    emit(state.copyWith(
      postcode: input.trim(),
      showPostcodeError: input.trim().isEmpty,
      showAccessCodeField: false,
      verifyDOBErrorMessage: "",
      verifyDOBError: false,
    ));

    // appLog(state.postcode);

    appLog("-------- ${state.dob} -------");
    if (input.trim().isNotEmpty &&
        input.trim().length > 2 &&
        state.dob.isNotEmpty) {
      verifyDOB();
    }
  }

  void onDobChanged(String value) {
    emit(state.copyWith(
      registrationFailureOrSuccess: none(),
      dob: value,
      showDobError: value.trim().isEmpty,
      showAccessCodeField: false,
      verifyDOBErrorMessage: "",
      verifyDOBError: false,
    ));

    appLog("-------- OndobChanged: $value");

    if (value.isNotEmpty && state.postcode.isNotEmpty) {
      verifyDOB();
    }
  }

  void verifyDOB() async {
    final result = await registerRepo.verifyDOB(state.dob, state.postcode);

    result.fold((l) => null, (r) {
      appLog("--- Register Cubit: VERIFY DOB ------> $r");

      final dataMap = Map<String, dynamic>.from(jsonDecode(r));

      appLog("----- dataMap----> ${dataMap["warning"]["show"]}");
      appLog("----- dataMap----> ${dataMap["showUnlimitedOption"]}");

      if (dataMap["warning"]["show"] == true) {
        emit(state.copyWith(
          showAccessCodeField: dataMap['accessCodeRequired'],
          verifyDOBError: true,
          showUnlimitedOption: dataMap["showUnlimitedOption"] ?? true,
          verifyDOBErrorMessage: dataMap['message'],
        ));
      } else {
        emit(state.copyWith(
          showAccessCodeField: dataMap['accessCodeRequired'],
          verifyDOBError: false,
          showUnlimitedOption: dataMap["showUnlimitedOption"] ?? true,
          verifyDOBErrorMessage: "",
        ));
      }
    });
  }

  void onGenderChanged(String input) {
    emit(state.copyWith(
      gender: input,
      registrationFailureOrSuccess: none(),
      showGenderError: input.isEmpty,
      // showAccessCodeField: false,
      // verifyDOBError: false,
      // verifyDOBErrorMessage: "",
    ));
  }

  void accessCodeChanged(String input) {
    emit(state.copyWith(
      accessCode: input.trim(),
      registrationFailureOrSuccess: none(),
      showAccessCodeError: input.trim().isEmpty,
      // showAccessCodeField: false,
      // verifyDOBError: false,
      // verifyDOBErrorMessage: "",
    ));
  }

  void onTransactionsChanged(String val) {
    emit(state.copyWith(
        transactions: val,
        registrationFailureOrSuccess: none(),
        showTransactionsError: false));
  }

  void onMaxTransactionsUpdated(bool val) {
    emit(state.copyWith(
      isMaxTransactionsAllowed: val,
      showTransactionsError: false,
      registrationFailureOrSuccess: none(),
    ));
  }

  /// Unlimited only counts while the option is actually offered; otherwise a
  /// stale tick could send -1 for a user who was never shown the checkbox.
  bool get _unlimitedChosen =>
      state.isMaxTransactionsAllowed && state.showUnlimitedOption;

  /// The number the gateway expects: -1 for unlimited, as the web client
  /// sends, otherwise the typed count. The field is numeric, but the keypad
  /// still offers separators, so anything unparseable is treated as missing.
  int? get _transactionLimit =>
      _unlimitedChosen ? -1 : int.tryParse(state.transactions.trim());

  void saveDetailsButtonClicked(String phoneNumber) async {
    appLog(
        "Register Cubit: saveDetailsButtonClicked -------> Phone Number: $phoneNumber");
    emit(state.copyWith(isLoading: true, registrationFailureOrSuccess: none()));
    appLog("States ------->$state");

    if (state.postcode.isNotEmpty &&
        state.dob.isNotEmpty &&
        state.gender.isNotEmpty) {
      appLog("Here 1 ------->");
      // The count used to be required even with "unlimited" ticked. The field
      // is disabled in that state, so the user could not fill it, and the error
      // was never drawn, so Save simply did nothing.
      if (state.showAccessCodeField &&
          (_transactionLimit == null || state.accessCode.isEmpty)) {
        appLog("Here 2 ------->");
        if (state.accessCode.isEmpty) {
          appLog("Here 4 ------->");
          emit(state.copyWith(
            isLoading: false,
            showAccessCodeError: state.accessCode.isEmpty,
          ));
        } else {
          appLog("Here 3 ------->");
          emit(state.copyWith(
            isLoading: false,
            showTransactionsError: true,
          ));
        }
      } else {
        appLog("Here 5 ------->");
        final result = await registerRepo.selfRegister(
            phoneNumber: phoneNumber,
            postCode: state.postcode,
            dob: state.dob,
            gender: state.gender,
            accessCode: state.accessCode,
            transactions: _transactionLimit ?? 0);
        result.fold((l) {
          emit(state.copyWith(
            isLoading: false,
            registrationFailureOrSuccess: some(Left(l)),
          ));
        }, (r) {
          emit(state.copyWith(
            isLoading: false,
            registrationFailureOrSuccess: some(right(r)),
          ));
        });
      }
    } else {
      appLog("Here 6 ------->");
      emit(state.copyWith(
        isLoading: false,
        showPostcodeError: state.postcode.isEmpty,
        showDobError: state.dob.isEmpty,
        showGenderError: state.gender.isEmpty,
      ));
    }
  }
}

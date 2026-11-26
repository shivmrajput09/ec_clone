import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/account/account_repo.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/presentation/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'account_state.dart';
part 'account_cubit.freezed.dart';

@injectable
class AccountCubit extends Cubit<AccountState> {
  AccountCubit(
    this.accountRepo,
  ) : super(AccountState.initial());

  final AccountRepository accountRepo;

  void titleEntered(String text) {
    final updatedState = state.copyWith(
      title: text.trim(),
      titleError: text.trim().isEmpty,
      supportSubmitFailureOrSuccess: none(),
    );
    emit(updatedState);
    appLog(state.title);
  }

  void descriptionEntered(String text) {
    final updatedState = state.copyWith(
      description: text.trim(),
      descriptionError: text.trim().isEmpty,
      supportSubmitFailureOrSuccess: none(),
    );
    emit(updatedState);
  }

  void emailChanged(String val) {
    final trimmed = val.trim();
    emit(state.copyWith(
      email: trimmed,
      emailError: trimmed.isNotEmpty && !trimmed.isEmailAddress,
      supportSubmitFailureOrSuccess: none(),
    ));
  }

  setImage(String profilePicturePath) {
    appLog(profilePicturePath);
    emit(state.copyWith(imagePath: profilePicturePath));
  }

  deleteImage() => emit(state.copyWith(imagePath: ''));

  void submitButtonPressed() async {
    emit(state.copyWith(isLoading: true));

    appLog(state);

    final result = await accountRepo.submitSupportRequest(
        title: state.title,
        description: state.description,
        email: state.email,
        imagePath: state.imagePath);

    result.fold((l) {
      emit(state.copyWith(
        isLoading: false,
        supportSubmitFailureOrSuccess: some(left(l)),
        titleError: false,
        descriptionError: false,
        emailError: false,
      ));
    }, (r) {
      emit(state.copyWith(
        isLoading: false,
        supportSubmitFailureOrSuccess: some(right(r)),
        titleError: false,
        descriptionError: false,
        emailError: false,
      ));
    });
  }
}

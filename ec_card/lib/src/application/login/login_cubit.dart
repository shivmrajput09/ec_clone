// lib/src/application/login/login_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/login/login_repo.dart';

part 'login_cubit.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success() = _Success;
  const factory LoginState.error(String message) = _Error;
}

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepo; // ✅ LoginRepo ki jagah LoginRepository

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> loginPressed(String phoneNumber) async {
    emit(const LoginState.loading());
    final result = await _loginRepo.sendOTP(phoneNumber);
    result.fold(
      (failure) => emit(LoginState.error(failure.toString())),
      (success) => emit(const LoginState.success()),
    );
  }
}
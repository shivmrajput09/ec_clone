// lib/src/application/login/login_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/login/login_repo.dart';

part 'login_cubit.freezed.dart';

// ==========================================
// 1. STATES (UI ki condition)
// ==========================================
@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success() = _Success;
  const factory LoginState.error(String message) = _Error;
}

// ==========================================
// 2. CUBIT (Logic Handle Karega)
// ==========================================
@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo; // DI khud yahan repo laake dega

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> loginPressed(String email, String password) async {
    emit(const LoginState.loading()); // Button dabte hi loading ghumao

    // Repo se API call karo
    final result = await _loginRepo.login(email: email, password: password);

    // Dartz Either ko handle karna (fold)
    result.fold(
      (failure) => emit(LoginState.error(failure.message)), // Left: Error aayi toh UI ko error do
      (success) => emit(const LoginState.success()),        // Right: Success aayi toh UI ko success do
    );
  }
}
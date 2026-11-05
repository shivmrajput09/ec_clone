// lib/src/application/login/login_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/login/login_repo.dart';

part 'login_cubit.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success() = _Success;
  const factory LoginState.error(String message) = _Error;
}

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  // ✅ Ab yeh email aur password dono arguments accept karta hai
  Future<void> loginPressed(String email, String password) async {
    emit(const LoginState.loading());
    
    final result = await _loginRepo.sendOTP(email);
    result.fold(
      (failure) => emit(LoginState.error(failure.toString())),
      (success) => emit(const LoginState.success()),
    );
  }
}
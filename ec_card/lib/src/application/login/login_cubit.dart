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
  final LoginRepository _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> sendOtpForPhone(String phoneNumber) async {
    final cleanPhone = phoneNumber.trim();
    if (cleanPhone.isEmpty || cleanPhone.length < 8) {
      emit(const LoginState.error('Please enter a valid UK/mobile phone number'));
      return;
    }

    emit(const LoginState.loading());

    final result = await _loginRepo.sendOTP(cleanPhone);
    result.fold(
      (failure) => emit(const LoginState.error('Failed to send OTP. Please try again.')),
      (success) => emit(const LoginState.success()),
    );
  }
}

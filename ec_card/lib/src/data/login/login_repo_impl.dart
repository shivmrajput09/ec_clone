import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/errors/errors.dart';
import '../../domain/local_storage/secure_storage_manager.dart';
import '../../domain/login/login_repo.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  final SecureStorgeManager _storageManager;

  LoginRepositoryImpl(this._storageManager);

  @override
  Future<Either<AppErrors, String>> sendOTP(String phoneNumber) async {
    try {
      await _storageManager.setPhoneNumber(phoneNumber: phoneNumber);
      return right('OTP Sent Successfully');
    } catch (e) {
      return left(const AppErrors.serverError());
    }
  }

  @override
  Future<Either<AppErrors, String>> signInWithOTP(
      String phoneNumber, String otp) async {
    try {
      await _storageManager.setAccessToken(accessToken: 'mock_access_token');
      await _storageManager.setRefreshToken(refreshToken: 'mock_refresh_token');
      await _storageManager.setPhoneNumber(phoneNumber: phoneNumber);
      return right('Login Successful');
    } catch (e) {
      return left(const AppErrors.serverError());
    }
  }

  @override
  Future<void> logout() async {
    await _storageManager.clearSecureStorage();
  }
}
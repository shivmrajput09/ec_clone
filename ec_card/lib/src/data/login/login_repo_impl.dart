import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/domain/login/login_api_service.dart';
import 'package:ec_card_app/src/domain/login/login_repo.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';
import 'package:ec_card_app/src/data/core/api/auth_response_tokens.dart';

@LazySingleton(as: LoginRepository)
class LoginRepositoryImpl implements LoginRepository {
  LoginRepositoryImpl(this.secureStorage, this.flutterSecureStorage);
  final loginAPIservice = getIt<LoginAPIService>();

  final SecureStorgeManager secureStorage;
  final FlutterSecureStorage flutterSecureStorage;

  @override
  Future<Either<AppErrors, String>> sendOTP(String phoneNumber) async {
    try {
      appLog("LoginRepoImpl: sendOTP -----> Inside try");
      final response = await loginAPIservice.loginAPI(phoneNumber);

      final result = convertToResponseData(response);

      appLog("---- LOGIN REPO IMPL: sendOTP, result: $result -----");

      if (result.status == 200) {
        return right(result.message);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      appLog("Login Repo Impl: Send OTP Error -------> $e");

      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> signInWithOTP(
      String phoneNumber, String otp) async {
    try {
      final response =
          await loginAPIservice.verifyLogin(phoneNumber: phoneNumber, otp: otp);

      final result = convertToResponseData(response);

      if (result.status == 200) {
        // Without both tokens every authenticated call would be refused, so
        // report it here rather than after the dashboard fails to load.
        if (!authResponseTokens(response.headers).isComplete) {
          return left(const AppErrors.unexpectedError());
        }
        await secureStorage.setPhoneNumber(phoneNumber: phoneNumber);

        // Tokens are stored by the interceptor, which sees every response and
        // knows where each one now arrives. Re-reading them here as headers
        // threw the moment the gateway moved the refresh token to a cookie,
        // turning a successful sign-in into an error.
        return right(result.message);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      appLog("---- Error in signInWithOTP: $e");

      // As in registration, a rejected code throws past the `else` above. The
      // OTP screen is shared between signing in and registering, so both routes
      // have to recover the reason or the same generic error shows on either.
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<void> logout() async {
    try {
      // Revoking the session server-side is what actually ends it. Deleting
      // the tokens locally only makes this device forget them; the session
      // itself stayed valid until it expired.
      await loginAPIservice.logout();
    } catch (e) {
      // A failed call must not strand the user in a signed-in state on this
      // device, so the local cleanup below runs either way.
      appLog("---- Error in logout: $e");
    } finally {
      await flutterSecureStorage.deleteAll();

      // Held on a singleton, so it outlives the session unless cleared: the
      // next person to sign in on this device would otherwise be shown the
      // previous user's eligibility for the few seconds the entry is live.
      getIt<ScannerAPIService>().invalidateEligibilityCache();
    }
  }
}

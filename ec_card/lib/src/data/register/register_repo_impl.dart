import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/core/errors/login_errors.dart';
import 'package:ec_card_app/src/domain/local_storage/secure_storage_manager.dart';
import 'package:ec_card_app/src/domain/register/register_api_service.dart';
import 'package:ec_card_app/src/domain/register/register_repo.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';
import 'package:ec_card_app/src/data/core/api/auth_response_tokens.dart';

@LazySingleton(as: RegisterRepository)
class RegisterRepoImpl implements RegisterRepository {
  RegisterRepoImpl(this.secureStorage);

  final SecureStorgeManager secureStorage;
  final registerAPIservice = getIt<RegisterAPIService>();

  @override
  Future<Either<AppErrors, String>> sendOTPforRegister(
      String phoneNumber) async {
    try {
      final response = await registerAPIservice.registerNumberAPI(phoneNumber);

      final result = convertToResponseData(response);

      // appLog("Result register: $result");

      if (result.status == 200) {
        return right(result.message);
      } else {
        return left(AppErrors.authErrors(
            loginError: LoginErrors.unknownError(
                code: result.status.toString(), message: result.message)));
      }
    } catch (e) {
      appLog("---- Error in sendOTPforRegister: $e");
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> verifyRegistration(
      String phoneNumber, String otp) async {
    try {
      final response =
          await registerAPIservice.verifyRegisterNumberAPI(phoneNumber, otp);

      final result = convertToResponseData(response);

      if (result.status == 200) {
        // Tokens are stored by the interceptor; see the note in the login
        // repository. Reading them here threw on a successful registration.
        // The date-of-birth check and self-registration need both, so fail
        // here rather than partway through.
        if (!authResponseTokens(response.headers).isComplete) {
          return left(const AppErrors.unexpectedError());
        }
        return right(result.message);
      } else {
        return left(const AppErrors.authErrors(
            loginError: LoginErrors.invalidVerificationCode()));
      }
    } catch (e) {
      appLog("---- Error in verifyRegistration: $e");

      // A rejected code comes back as a 4xx, which throws before the `else`
      // above can run. The server says whether the code was wrong or merely
      // expired — worth passing on, since only one of those is worth a resend.
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> verifyDOB(
      String dob, String postalCode) async {
    try {
      final response = await registerAPIservice.checkDOBAPI(dob, postalCode);
      final result = convertToResponseData(response);

      return right(result.data);
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> selfRegister({
    required String phoneNumber,
    required String postCode,
    required String dob,
    required String gender,
    String? accessCode,
    required int transactions,
  }) async {
    try {
      final response = await registerAPIservice.selfRegisterAPI(
          postalCode: postCode,
          dob: dob,
          gender: gender,
          accessCode: accessCode ?? "",
          allowedTransactionLimit: transactions);

      final result = convertToResponseData(response);

      appLog("SELF REGISTER API RESULT : $result");

      if (result.status == 200) {
        await secureStorage.setPhoneNumber(phoneNumber: phoneNumber);

        return right(result.message);
      } else {
        return left(AppErrors.defaultError(error: result.message));
      }
    } catch (e) {
      appLog("---- Error in registering: $e");

      return left(appErrorFrom(e));
    }
  }
}

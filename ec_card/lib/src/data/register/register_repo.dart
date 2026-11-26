import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';

abstract class RegisterRepository {
  Future<Either<AppErrors, String>> sendOTPforRegister(String phoneNumber);

  Future<Either<AppErrors, String>> verifyRegistration(
      String phoneNumber, String otp);

  Future<Either<AppErrors, String>> verifyDOB(String dob, String postalCode);

  Future<Either<AppErrors, String>> selfRegister({
    required String phoneNumber,
    required String postCode,
    required String dob,
    required String gender,
    String? accessCode,
    required int transactions,
  });
}

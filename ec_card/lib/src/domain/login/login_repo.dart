import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';

abstract class LoginRepository {
  Future<Either<AppErrors, String>> signInWithOTP(
      String phoneNumber, String otp);

  Future<Either<AppErrors, String>> sendOTP(String phoneNumber);

  Future<void> logout();
}

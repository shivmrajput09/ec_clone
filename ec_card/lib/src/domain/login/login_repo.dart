import 'package:dartz/dartz.dart';
import '../core/errors/errors.dart';

abstract class LoginRepository {
  Future<Either<AppErrors, String>> sendOTP(String phoneNumber);

  Future<Either<AppErrors, String>> signInWithOTP(
      String phoneNumber, String otp);

  Future<void> logout();
}
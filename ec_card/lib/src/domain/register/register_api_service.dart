import 'package:dio/dio.dart';

abstract class RegisterAPIService {
  Future<Response<dynamic>> registerNumberAPI(String phoneNumber);

  Future<Response<dynamic>> verifyRegisterNumberAPI(
      String phoneNumber, String otp);

  Future<Response<dynamic>> selfRegisterAPI({
    required String postalCode,
    required String dob,
    required String gender,
    String? accessCode,
    required int allowedTransactionLimit,
  });

  Future<Response<dynamic>> checkDOBAPI(String dob, String postalCode);
}

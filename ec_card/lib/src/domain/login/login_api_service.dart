import 'package:dio/dio.dart';

abstract class LoginAPIService {
  Future<Response<dynamic>> loginAPI(String phoneNumber);

  Future<Response<dynamic>> verifyLogin({required phoneNumber, required otp});

  Future<Response<dynamic>> logout();
}

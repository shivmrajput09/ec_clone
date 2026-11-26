import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/login/login_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: LoginAPIService)
class LoginAPIServiceImpl implements LoginAPIService {
  final ApiService _apiService = getIt<ApiService>();
  // final apiService = ApiService();

  @override
  Future<Response<dynamic>> loginAPI(String phoneNumber) async {
    appLog("Inside login API call");

    final response = await _apiService.dio.post(
      APIEndpoints.LOGIN_URL,
      data: {
        'mobile': phoneNumber,
      },
    );

    return response;
  }

  @override
  Future<Response> verifyLogin({required phoneNumber, required otp}) async {
    appLog(
        "------LOGIN API SERVICE IMPL: Verify Login -------> Inside Verify Login Function -------");

    final response = await _apiService.dio.post(
      APIEndpoints.VERIFY_LOGIN_URL,
      data: {
        'mobile': phoneNumber,
        'otp': otp,
      },
    );

    return response;
  }

  @override
  Future<Response<dynamic>> logout() async {
    appLog("Inside logout API call");

    // The tokens the gateway needs to identify the session are attached by
    // the interceptor, as on any other authenticated request.
    return _apiService.dio.post(APIEndpoints.LOGOUT_URL);
  }
}

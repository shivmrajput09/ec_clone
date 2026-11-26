import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/register/register_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: RegisterAPIService)
class RegisterAPIServiceImpl implements RegisterAPIService {
  final ApiService _apiService = getIt<ApiService>();

  @override
  Future<Response> registerNumberAPI(String phoneNumber) async {
    appLog("Inside Register Number API call");

    final response = await _apiService.dio.post(
      APIEndpoints.REGISTER_NUMBER_URL,
      data: {
        'mobile': phoneNumber,
      },
    );

    return response;
  }

  @override
  Future<Response> verifyRegisterNumberAPI(
      String phoneNumber, String otp) async {
    appLog("Inside Verify Register Number API call");

    final response = await _apiService.dio.post(
      APIEndpoints.VERIFY_REGISTER_URL,
      data: {
        'mobile': phoneNumber,
        'otp': otp,
      },
    );

    return response;
  }

  @override
  Future<Response> checkDOBAPI(String dob, String postalCode) async {
    appLog("Inside Check DOB API Call");

    final response =
        await _apiService.dio.post(APIEndpoints.CHECK_DOB_URL, data: {
      "dateOfBirth": dob,
      "postalCode": postalCode,
    });

    return response;
  }

  @override
  Future<Response> selfRegisterAPI({
    required String postalCode,
    required String dob,
    required String gender,
    String? accessCode,
    required int allowedTransactionLimit,
  }) async {
    appLog("----- Inside Self Register API");

    appLog("------- REGISTER REPO IMPL: DOB ------> $dob");

    // final DateTime convertedDOB = DateTime.parse(dob);

    appLog(
        "-------- REGISTER API SERVICE: API DATA----> $postalCode $dob $gender $accessCode --------");
    appLog(
        "---------- REGISTER API SERVICE: API ENDPOINT ------> ${APIEndpoints.SELF_REGISTER_URL} -----------");

    final response = await _apiService.dio.post(
      APIEndpoints.SELF_REGISTER_URL,
      data: {
        "postalCode": postalCode,
        "dateOfBirth": dob,
        "gender": gender,
        "accessCode": accessCode,
        "allowedTransactionLimit": allowedTransactionLimit
      },
    );

    return response;
  }
}

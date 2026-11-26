import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/loading_status/loading_status_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: LoadingStatusAPIService)
class LoadingStatusAPIServcieImpl implements LoadingStatusAPIService {
  final ApiService _apiService = getIt<ApiService>();

  @override
  Future<Response<dynamic>> quizPassedAPI({bool? quizCheck = true}) async {
    appLog("----- Loading Status API Impl: Inside Quiz Passed API");

    final response = await _apiService.dio
        .get(APIEndpoints.LEVEL_PROGRESS_URL, queryParameters: {
      'quizCheck': quizCheck,
    });

    return response;
  }

  @override
  Future<Response<dynamic>> userProfileAPI() async {
    appLog("----- Loading Status API Impl: InsideUser Profile API");

    final response = await _apiService.dio.get(APIEndpoints.USER_PROFILE_URL);
    appLog("----- User Profile Response: ${redacted(response.data)}");

    return response;
  }

  @override
  Future<Response<dynamic>> orgBrandInfoAPI() async {
    appLog("----- Loading Status API Impl: Inside OrgBrandInfo API");

    final response = await _apiService.dio.get(APIEndpoints.BRAND_INFO_URL);

    return response;
  }

  @override
  Future<Response<dynamic>> userDashboardAPI() async {
    appLog("----- Loading Status API Impl: Inside UserDashboard API");

    final response = await _apiService.dio.get(APIEndpoints.USER_DASHBOARD_URL);
    appLog("----- Response Mikoo: "+response.toString());
    return response;
  }

  @override
  Future<Response> userSelfDeleteAPI() async {
    final response = await _apiService.dio.post(APIEndpoints.SELF_DELETE_URL);

    return response;
  }

  @override
  Future<Response> userSelfDeleteConfirmAPI(String otp) async {
    final response =
        await _apiService.dio.delete(APIEndpoints.SELF_DELETE_URL, data: {
      'otp': otp,
    });

    return response;
  }
}

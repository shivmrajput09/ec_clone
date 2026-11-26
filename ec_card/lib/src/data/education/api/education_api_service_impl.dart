import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/education/education_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: EducationAPIService)
class EducationAPIServiceImpl implements EducationAPIService {
  final ApiService _apiService = getIt<ApiService>();
  @override
  Future<Response> educationDocumentAPI() async {
    appLog("----- Education API Impl: Inside Education Document API");

    final response =
        await _apiService.dio.get(APIEndpoints.EDUCATION_DOCUMENT_URL);

    return response;
  }

  @override
  Future<Response> educationDocumentSearchAPI(String query) async {
    appLog(
        "----- Education API Impl: Inside Education Document Search API");

    final response = await _apiService.dio
        .get(APIEndpoints.EDUCATION_DOCUMENT_URL, queryParameters: {
      'search': query,
    });

    return response;
  }

  @override
  Future<Response> educationVIdeoSearchAPI(String query) async {
    appLog("----- Education API Impl: Inside Education Video Search API");

    final response = await _apiService.dio
        .get(APIEndpoints.EDUCATION_VIDEO_URL, queryParameters: {
      'search': query,
    });

    return response;
  }

  @override
  Future<Response> educationVideoAPI() async {
    appLog("----- Education API Impl: Inside Education Video API");

    final response =
        await _apiService.dio.get(APIEndpoints.EDUCATION_VIDEO_URL);

    return response;
  }

  @override
  Future<Response> educationWeblinkAPI({String search = ''}) async {
    appLog("----- Education API Impl: Inside Education Weblink API");

    final response = await _apiService.dio.get(
      APIEndpoints.EDUCATION_WEBLINK_URL,
      queryParameters: search.isEmpty ? null : {'search': search},
    );

    return response;
  }

  @override
  Future<Response> viewEducationAPI(String type, String educationId) async {
    appLog("----- Education API Impl: Inside View Education API");

    final response = await _apiService.dio.put(
      "${APIEndpoints.EDUCATION_URL}/$type/$educationId",
    );

    return response;
  }
}

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/data/core/api/api_service.dart';
import 'package:ec_card_app/src/domain/quiz/quiz_api_service.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: QuizAPIService)
class QuizAPIServiceImpl implements QuizAPIService {
  final ApiService _apiService = getIt<ApiService>();

  @override
  Future<Response> bypassQuizStageAPI(
      String accessCode, int transactions, String accessType) async {
    appLog("Inside By Pass Quiz API Call");

    final response = await _apiService.dio.post(
      APIEndpoints.BYPASS_QUIZ_STAGE_URL,
      data: {
        "accessCode": accessCode,
        "allowedTransactionLimit": transactions,
        "accessType": accessType,
      },
    );

    return response;
  }

  @override
  Future<Response> markAsWatchedAPI(String videoId) async {
    appLog("Inside Mark As Watched API Call");

    final response = await _apiService.dio.post(
      "/user/v1/mark-as-watched/$videoId",
    );

    return response;
  }

  @override
  Future<Response> viewQuestionsAPI() async {
    appLog("Inside View Questions API Call");

    final response = await _apiService.dio.get(
      APIEndpoints.VIEW_QUESTIONS_URL,
    );

    return response;
  }

  @override
  Future<Response> submitQuizAPI(
      List<Map<String, String>> selectedOptionsList) async {
    appLog("Inside Submit Quiz API Call");

    appLog("---- SUBMIT QUIZ API: data ------> $selectedOptionsList");

    final response =
        await _apiService.dio.post(APIEndpoints.SUBMIT_QUIZ_URL, data: {
      "quizSubmission": jsonEncode(selectedOptionsList),
    });

    return response;
  }

  @override
  Future<Response> markAllAsWatched() async {
    final response = await _apiService.dio.post(APIEndpoints.MARK_ALL_WATCHED);

    return response;
  }
}

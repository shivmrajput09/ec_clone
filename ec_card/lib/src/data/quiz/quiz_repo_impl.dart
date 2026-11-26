import 'dart:convert';

import 'package:ec_card_app/src/data/core/model/response_data.dart';
import 'package:ec_card_app/src/data/quiz/model/question_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/domain/loading_status/loading_status_api_service.dart';
import 'package:ec_card_app/src/domain/quiz/quiz_api_service.dart';
import 'package:ec_card_app/src/domain/quiz/quiz_repo.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

@LazySingleton(as: QuizRepository)
class QuizRepositoryImpl implements QuizRepository {
  final loadingStatusAPIService = getIt<LoadingStatusAPIService>();
  final quizAPIService = getIt<QuizAPIService>();

  @override
  Future<Either<AppErrors, Map<String, dynamic>>>
      getVideoListFromDatabase() async {
    try {
      final response =
          await loadingStatusAPIService.quizPassedAPI(quizCheck: false);
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final Map<String, dynamic> mapData = jsonDecode(result.data);
        appLog("QUIZ REPO IMPL: GET VIDEO---> $mapData");

        return right(mapData);
      } else {
        return left(serverErrorFrom(result));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, Unit>> markVideoAsWatched(String videoId) async {
    try {
      final response = await quizAPIService.markAsWatchedAPI(videoId);
      final result = convertToResponseData(response);

      appLog(
          "------ MARK AS WATCHED REPO: Message -------> ${result.message}");
      if (result.status == 200) {
        return right(unit);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, ({List<QuestionItem> questions, bool quizLevelPassed})>>
      getAllQuestions() async {
    try {
      final response = await quizAPIService.viewQuestionsAPI();
      final result = convertToResponseData(response);

      if (result.status == 200) {
        final Map<String, dynamic> mapData = jsonDecode(result.data);

        final bool quizLevelPassed = mapData['quizLevelPassed'] == true;
        // When the quiz is already passed the server omits `quizQuestions`,
        // so guard against null before converting.
        final List<QuestionItem> questionList =
            convertIntoListOfQuestionItem(mapData['quizQuestions'] ?? const []);

        return right(
            (questions: questionList, quizLevelPassed: quizLevelPassed));
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, Unit>> byPassQuizUsingAccessCode(
    String accessCode,
    int transactions,
    String accessType,
  ) async {
    try {
      final response = await quizAPIService.bypassQuizStageAPI(
          accessCode, transactions, accessType);

      final result = convertToResponseData(response);

      if (result.status == 200) {
        return right(unit);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, String>> submitQuiz(
      List<Map<String, String>> selectedOptionsList) async {
    try {
      final response = await quizAPIService.submitQuizAPI(selectedOptionsList);
      final result = convertToResponseData(response);

      appLog(
          "----- QUIZ REPO IMPL: sumitQUizResult ------> ${result.data}");

      if (result.status == 200) {
        return right(result.data);
      } else {
        return left(AppErrors.defaultError(
          error: result.message,
        ));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }

  @override
  Future<Either<AppErrors, Unit>> markAllAsWatched() async {
    try {
      final response = await quizAPIService.markAllAsWatched();
      final result = convertToResponseData(response);

      if (result.status == 200) {
        return right(unit);
      } else {
        return left(serverErrorFrom(result));
      }
    } catch (e) {
      return left(appErrorFrom(e));
    }
  }
}

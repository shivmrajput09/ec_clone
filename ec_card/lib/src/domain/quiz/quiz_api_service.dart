import 'package:dio/dio.dart';

abstract class QuizAPIService {
  Future<Response<dynamic>> bypassQuizStageAPI(
      String accessCode, int transactions, String accessType);

  Future<Response<dynamic>> markAsWatchedAPI(String videoId);

  Future<Response<dynamic>> submitQuizAPI(
      List<Map<String, String>> selectedOptionsList);

  Future<Response<dynamic>> viewQuestionsAPI();

  Future<Response<dynamic>> markAllAsWatched();
}

import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/quiz/model/question_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';

abstract class QuizRepository {
  Future<Either<AppErrors, Map<String, dynamic>>> getVideoListFromDatabase();

  Future<Either<AppErrors, Unit>> markVideoAsWatched(String videoId);

  /// Returns the quiz questions plus whether the account has already passed the
  /// quiz. When [quizLevelPassed] is true the server sends no questions, and the
  /// UI should skip the quiz screen entirely rather than show an empty quiz.
  Future<Either<AppErrors, ({List<QuestionItem> questions, bool quizLevelPassed})>>
      getAllQuestions();

  Future<Either<AppErrors, Unit>> byPassQuizUsingAccessCode(String accessCode, int transactions, String accessType);

  Future<Either<AppErrors, String>> submitQuiz(
      List<Map<String, String>> selectedOptionsList);

  Future<Either<AppErrors, Unit>> markAllAsWatched();
}

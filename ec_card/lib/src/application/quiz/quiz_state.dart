part of 'quiz_cubit.dart';

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    @Default([]) List<QuestionItem> quizList,
    @Default(false) bool quizLevelPassed,
    required Option<Either<AppErrors, Unit>> questionFecthingFailureOrSuccess,
    @Default(false) bool isLoading,
    @Default(int) selectedAnswer,
    @Default([]) List<Map<String, String>> selectedOptionsList,
    @Default(false) bool allQuestionsAnswered,
    @Default(false) bool isQuizSubmitLoading,
    Option<Either<AppErrors, String>>? submitQuizFailureOrSuccess,
  }) = _QuizState;

  factory QuizState.initial() => QuizState(
        quizList: [],
        questionFecthingFailureOrSuccess: none(),
        isLoading: false,
        selectedAnswer: 0,
        selectedOptionsList: [],
        allQuestionsAnswered: false,
        isQuizSubmitLoading: false,
        submitQuizFailureOrSuccess: none(),
      );
}

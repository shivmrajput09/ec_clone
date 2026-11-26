import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/quiz/model/question_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/quiz/quiz_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'quiz_state.dart';
part 'quiz_cubit.freezed.dart';

@injectable
class QuizCubit extends Cubit<QuizState> {
  QuizCubit(this.quizRepo) : super(QuizState.initial());

  final QuizRepository quizRepo;

  void getQuestionsList() async {
    emit(state.copyWith(
      isLoading: true,
    ));

    final result = await quizRepo.getAllQuestions();
    result.fold((l) {
      emit(state.copyWith(
        isLoading: false,
        quizList: [],
        questionFecthingFailureOrSuccess: some(left(l)),
      ));
    }, (r) {
      emit(state.copyWith(
        isLoading: false,
        quizList: r.questions,
        quizLevelPassed: r.quizLevelPassed,
        questionFecthingFailureOrSuccess: some(right(unit)),
      ));
    });
  }

  void updateAnswersOfQuiz({required selectedOptionId, required questionId}) {
    final selectedIndex = state.selectedOptionsList
        .indexWhere((element) => element['questionId'] == questionId);

    List<Map<String, String>> selectedOptions =
        List.from(state.selectedOptionsList);

    if (selectedIndex >= 0) {
      selectedOptions[selectedIndex] = {
        "questionId": questionId,
        "optionId": selectedOptionId
      };
    } else {
      selectedOptions
          .add({"questionId": questionId, "optionId": selectedOptionId});
    }

    emit(state.copyWith(
      selectedOptionsList: selectedOptions,
      allQuestionsAnswered: state.quizList.length == selectedOptions.length,
    ));
  }

  void onSubmitQuizPressed() async {
    emit(state.copyWith(isQuizSubmitLoading: true));

    final result = await quizRepo.submitQuiz(state.selectedOptionsList);
    result.fold((l) {
      emit(state.copyWith(
        isQuizSubmitLoading: false,
        submitQuizFailureOrSuccess: some(left(l)),
      ));
    }, (r) {
      emit(state.copyWith(
        isQuizSubmitLoading: false,
        submitQuizFailureOrSuccess: some(right(r)),
      ));
    });
  }
}

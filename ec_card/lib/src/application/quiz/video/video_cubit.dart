import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:ec_card_app/src/data/quiz/model/video_item.dart';
import 'package:ec_card_app/src/domain/core/errors/errors.dart';
import 'package:ec_card_app/src/domain/quiz/quiz_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

part 'video_state.dart';
part 'video_cubit.freezed.dart';

@injectable
class VideoCubit extends Cubit<VideoState> {
  VideoCubit({required this.quizRepo}) : super(VideoState.initial());

  final QuizRepository quizRepo;

  void getVideosList() async {
    emit(state.copyWith(
      isLoading: true,
      markAllWatchedFailureOrSuccess: none(),
    ));
    final videosFromDB = await quizRepo.getVideoListFromDatabase();
    videosFromDB.fold((l) {
      emit(state.copyWith(
        videoListFailureOrSuccess: some(left(l)),
        isLoading: false,
      ));
    }, (r) {
      appLog("VIDEO CUBIT:  $r");
      final videoList = convertIntoListOfVideoItem(r['videosDetails']);
      final allWatched = videoList.every((video) => video.watched);
      emit(state.copyWith(
        skipQuizPage: r['skipQuizPage'],
        showSkipButton: r['showSkipButton'],
        videoList: videoList,
        allVideosWatched: allWatched,
        isLoading: false,
      ));
    });
  }

  void markAsWatched(String videoId) async {
    await quizRepo.markVideoAsWatched(videoId);
  }

  void onSkipPressed() async {
    emit(state.copyWith(
      isLoading: true,
      markAllWatchedFailureOrSuccess: none(),
    ));

    final res = await quizRepo.markAllAsWatched();
    res.fold(
      (l) {
        emit(state.copyWith(
          isLoading: false,
          markAllWatchedFailureOrSuccess: some(left(l)),
        ));
      },
      (r) {
        emit(state.copyWith(
          isLoading: false,
          markAllWatchedFailureOrSuccess: some(right(r)),
        ));
      },
    );
  }

  void onAccessCodeChanged(String input) {
    emit(state.copyWith(
      markAllWatchedFailureOrSuccess: none(),
      accessCode: input.trim(),
      quizByPassFailureOrSuccess: none(),
    ));
  }

  void onTransactionsChanged(String val) {
    emit(state.copyWith(
        transactions: val,
        markAllWatchedFailureOrSuccess: none(),
        quizByPassFailureOrSuccess: none(),
        showTransactionsError: val.trim().isNotEmpty));
  }

  void onMaxTransactionsUpdated(bool val) {
    emit(state.copyWith(
      isMaxTransactionsAllowed: val,
      quizByPassFailureOrSuccess: none(),
      markAllWatchedFailureOrSuccess: none(),
    ));
  }

  void updateTransactionPermission(Map<String, dynamic> data) {
    emit(state.copyWith(
      askTxnsAllowed: data,
      quizByPassFailureOrSuccess: none(),
      markAllWatchedFailureOrSuccess: none(),
    ));
  }

  void onAccessCodeSubmitted() async {
    emit(state.copyWith(
      isAccessCodeSubmitLoading: true,
      markAllWatchedFailureOrSuccess: none(),
    ));
    if (state.accessCode.isNotEmpty) {
      final result = await quizRepo.byPassQuizUsingAccessCode(
          state.accessCode,
          state.isMaxTransactionsAllowed
              ? -1
              : int.parse(
                  state.transactions.isNotEmpty ? state.transactions : "0"),
          state.askTxnsAllowed['show'] == true ? "register" : "");
      result.fold((l) {
        emit(state.copyWith(
          isAccessCodeSubmitLoading: false,
          quizByPassFailureOrSuccess: some(left(l)),
        ));
      }, (r) {
        emit(state.copyWith(
          isAccessCodeSubmitLoading: false,
          quizByPassFailureOrSuccess: some(right(unit)),
        ));
      });
    }
  }
}

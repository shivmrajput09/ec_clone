part of 'video_cubit.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState({
    @Default([]) List<VideoItem> videoList,
    @Default(false) bool isVideoWatched,
    @Default(0) int indexOfVideoPlaying,
    @Default(false) bool isLoading,
    @Default(false) bool allVideosWatched,
    Option<Either<AppErrors, VideoItem>>? videoListFailureOrSuccess,
    @Default('') String accessCode,
    @Default(false) bool isAccessCodeSubmitLoading,
    Option<Either<AppErrors, Unit>>? quizByPassFailureOrSuccess,
    @Default(false) bool showSkipButton,
    @Default(false) bool skipQuizPage,
    Option<Either<AppErrors, Unit>>? markAllWatchedFailureOrSuccess,
    @Default('') String transactions,
    @Default(false) bool showTransactionsError,
    @Default(false) bool isMaxTransactionsAllowed,
    @Default({}) Map<String, dynamic> askTxnsAllowed,
  }) = _VideoState;

  factory VideoState.initial() => VideoState(
      videoListFailureOrSuccess: none(),
      videoList: [],
      isVideoWatched: false,
      indexOfVideoPlaying: 0,
      isLoading: false,
      accessCode: "",
      allVideosWatched: false,
      isAccessCodeSubmitLoading: false,
      quizByPassFailureOrSuccess: none(),
      showSkipButton: false,
      skipQuizPage: false,
      markAllWatchedFailureOrSuccess: none(),
      transactions: "",
      showTransactionsError: false,
      askTxnsAllowed: {},
      isMaxTransactionsAllowed: false);
}

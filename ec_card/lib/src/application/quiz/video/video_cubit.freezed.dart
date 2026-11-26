// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoState {
  List<VideoItem> get videoList => throw _privateConstructorUsedError;
  bool get isVideoWatched => throw _privateConstructorUsedError;
  int get indexOfVideoPlaying => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get allVideosWatched => throw _privateConstructorUsedError;
  Option<Either<AppErrors, VideoItem>>? get videoListFailureOrSuccess =>
      throw _privateConstructorUsedError;
  String get accessCode => throw _privateConstructorUsedError;
  bool get isAccessCodeSubmitLoading => throw _privateConstructorUsedError;
  Option<Either<AppErrors, Unit>>? get quizByPassFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get showSkipButton => throw _privateConstructorUsedError;
  bool get skipQuizPage => throw _privateConstructorUsedError;
  Option<Either<AppErrors, Unit>>? get markAllWatchedFailureOrSuccess =>
      throw _privateConstructorUsedError;
  String get transactions => throw _privateConstructorUsedError;
  bool get showTransactionsError => throw _privateConstructorUsedError;
  bool get isMaxTransactionsAllowed => throw _privateConstructorUsedError;
  Map<String, dynamic> get askTxnsAllowed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoStateCopyWith<VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
  @useResult
  $Res call(
      {List<VideoItem> videoList,
      bool isVideoWatched,
      int indexOfVideoPlaying,
      bool isLoading,
      bool allVideosWatched,
      Option<Either<AppErrors, VideoItem>>? videoListFailureOrSuccess,
      String accessCode,
      bool isAccessCodeSubmitLoading,
      Option<Either<AppErrors, Unit>>? quizByPassFailureOrSuccess,
      bool showSkipButton,
      bool skipQuizPage,
      Option<Either<AppErrors, Unit>>? markAllWatchedFailureOrSuccess,
      String transactions,
      bool showTransactionsError,
      bool isMaxTransactionsAllowed,
      Map<String, dynamic> askTxnsAllowed});
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? isVideoWatched = null,
    Object? indexOfVideoPlaying = null,
    Object? isLoading = null,
    Object? allVideosWatched = null,
    Object? videoListFailureOrSuccess = freezed,
    Object? accessCode = null,
    Object? isAccessCodeSubmitLoading = null,
    Object? quizByPassFailureOrSuccess = freezed,
    Object? showSkipButton = null,
    Object? skipQuizPage = null,
    Object? markAllWatchedFailureOrSuccess = freezed,
    Object? transactions = null,
    Object? showTransactionsError = null,
    Object? isMaxTransactionsAllowed = null,
    Object? askTxnsAllowed = null,
  }) {
    return _then(_value.copyWith(
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoItem>,
      isVideoWatched: null == isVideoWatched
          ? _value.isVideoWatched
          : isVideoWatched // ignore: cast_nullable_to_non_nullable
              as bool,
      indexOfVideoPlaying: null == indexOfVideoPlaying
          ? _value.indexOfVideoPlaying
          : indexOfVideoPlaying // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      allVideosWatched: null == allVideosWatched
          ? _value.allVideosWatched
          : allVideosWatched // ignore: cast_nullable_to_non_nullable
              as bool,
      videoListFailureOrSuccess: freezed == videoListFailureOrSuccess
          ? _value.videoListFailureOrSuccess
          : videoListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, VideoItem>>?,
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
      isAccessCodeSubmitLoading: null == isAccessCodeSubmitLoading
          ? _value.isAccessCodeSubmitLoading
          : isAccessCodeSubmitLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quizByPassFailureOrSuccess: freezed == quizByPassFailureOrSuccess
          ? _value.quizByPassFailureOrSuccess
          : quizByPassFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, Unit>>?,
      showSkipButton: null == showSkipButton
          ? _value.showSkipButton
          : showSkipButton // ignore: cast_nullable_to_non_nullable
              as bool,
      skipQuizPage: null == skipQuizPage
          ? _value.skipQuizPage
          : skipQuizPage // ignore: cast_nullable_to_non_nullable
              as bool,
      markAllWatchedFailureOrSuccess: freezed == markAllWatchedFailureOrSuccess
          ? _value.markAllWatchedFailureOrSuccess
          : markAllWatchedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, Unit>>?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as String,
      showTransactionsError: null == showTransactionsError
          ? _value.showTransactionsError
          : showTransactionsError // ignore: cast_nullable_to_non_nullable
              as bool,
      isMaxTransactionsAllowed: null == isMaxTransactionsAllowed
          ? _value.isMaxTransactionsAllowed
          : isMaxTransactionsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      askTxnsAllowed: null == askTxnsAllowed
          ? _value.askTxnsAllowed
          : askTxnsAllowed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoStateImplCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$$VideoStateImplCopyWith(
          _$VideoStateImpl value, $Res Function(_$VideoStateImpl) then) =
      __$$VideoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<VideoItem> videoList,
      bool isVideoWatched,
      int indexOfVideoPlaying,
      bool isLoading,
      bool allVideosWatched,
      Option<Either<AppErrors, VideoItem>>? videoListFailureOrSuccess,
      String accessCode,
      bool isAccessCodeSubmitLoading,
      Option<Either<AppErrors, Unit>>? quizByPassFailureOrSuccess,
      bool showSkipButton,
      bool skipQuizPage,
      Option<Either<AppErrors, Unit>>? markAllWatchedFailureOrSuccess,
      String transactions,
      bool showTransactionsError,
      bool isMaxTransactionsAllowed,
      Map<String, dynamic> askTxnsAllowed});
}

/// @nodoc
class __$$VideoStateImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$VideoStateImpl>
    implements _$$VideoStateImplCopyWith<$Res> {
  __$$VideoStateImplCopyWithImpl(
      _$VideoStateImpl _value, $Res Function(_$VideoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoList = null,
    Object? isVideoWatched = null,
    Object? indexOfVideoPlaying = null,
    Object? isLoading = null,
    Object? allVideosWatched = null,
    Object? videoListFailureOrSuccess = freezed,
    Object? accessCode = null,
    Object? isAccessCodeSubmitLoading = null,
    Object? quizByPassFailureOrSuccess = freezed,
    Object? showSkipButton = null,
    Object? skipQuizPage = null,
    Object? markAllWatchedFailureOrSuccess = freezed,
    Object? transactions = null,
    Object? showTransactionsError = null,
    Object? isMaxTransactionsAllowed = null,
    Object? askTxnsAllowed = null,
  }) {
    return _then(_$VideoStateImpl(
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<VideoItem>,
      isVideoWatched: null == isVideoWatched
          ? _value.isVideoWatched
          : isVideoWatched // ignore: cast_nullable_to_non_nullable
              as bool,
      indexOfVideoPlaying: null == indexOfVideoPlaying
          ? _value.indexOfVideoPlaying
          : indexOfVideoPlaying // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      allVideosWatched: null == allVideosWatched
          ? _value.allVideosWatched
          : allVideosWatched // ignore: cast_nullable_to_non_nullable
              as bool,
      videoListFailureOrSuccess: freezed == videoListFailureOrSuccess
          ? _value.videoListFailureOrSuccess
          : videoListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, VideoItem>>?,
      accessCode: null == accessCode
          ? _value.accessCode
          : accessCode // ignore: cast_nullable_to_non_nullable
              as String,
      isAccessCodeSubmitLoading: null == isAccessCodeSubmitLoading
          ? _value.isAccessCodeSubmitLoading
          : isAccessCodeSubmitLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      quizByPassFailureOrSuccess: freezed == quizByPassFailureOrSuccess
          ? _value.quizByPassFailureOrSuccess
          : quizByPassFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, Unit>>?,
      showSkipButton: null == showSkipButton
          ? _value.showSkipButton
          : showSkipButton // ignore: cast_nullable_to_non_nullable
              as bool,
      skipQuizPage: null == skipQuizPage
          ? _value.skipQuizPage
          : skipQuizPage // ignore: cast_nullable_to_non_nullable
              as bool,
      markAllWatchedFailureOrSuccess: freezed == markAllWatchedFailureOrSuccess
          ? _value.markAllWatchedFailureOrSuccess
          : markAllWatchedFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, Unit>>?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as String,
      showTransactionsError: null == showTransactionsError
          ? _value.showTransactionsError
          : showTransactionsError // ignore: cast_nullable_to_non_nullable
              as bool,
      isMaxTransactionsAllowed: null == isMaxTransactionsAllowed
          ? _value.isMaxTransactionsAllowed
          : isMaxTransactionsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      askTxnsAllowed: null == askTxnsAllowed
          ? _value._askTxnsAllowed
          : askTxnsAllowed // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$VideoStateImpl implements _VideoState {
  const _$VideoStateImpl(
      {final List<VideoItem> videoList = const [],
      this.isVideoWatched = false,
      this.indexOfVideoPlaying = 0,
      this.isLoading = false,
      this.allVideosWatched = false,
      this.videoListFailureOrSuccess,
      this.accessCode = '',
      this.isAccessCodeSubmitLoading = false,
      this.quizByPassFailureOrSuccess,
      this.showSkipButton = false,
      this.skipQuizPage = false,
      this.markAllWatchedFailureOrSuccess,
      this.transactions = '',
      this.showTransactionsError = false,
      this.isMaxTransactionsAllowed = false,
      final Map<String, dynamic> askTxnsAllowed = const {}})
      : _videoList = videoList,
        _askTxnsAllowed = askTxnsAllowed;

  final List<VideoItem> _videoList;
  @override
  @JsonKey()
  List<VideoItem> get videoList {
    if (_videoList is EqualUnmodifiableListView) return _videoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

  @override
  @JsonKey()
  final bool isVideoWatched;
  @override
  @JsonKey()
  final int indexOfVideoPlaying;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool allVideosWatched;
  @override
  final Option<Either<AppErrors, VideoItem>>? videoListFailureOrSuccess;
  @override
  @JsonKey()
  final String accessCode;
  @override
  @JsonKey()
  final bool isAccessCodeSubmitLoading;
  @override
  final Option<Either<AppErrors, Unit>>? quizByPassFailureOrSuccess;
  @override
  @JsonKey()
  final bool showSkipButton;
  @override
  @JsonKey()
  final bool skipQuizPage;
  @override
  final Option<Either<AppErrors, Unit>>? markAllWatchedFailureOrSuccess;
  @override
  @JsonKey()
  final String transactions;
  @override
  @JsonKey()
  final bool showTransactionsError;
  @override
  @JsonKey()
  final bool isMaxTransactionsAllowed;
  final Map<String, dynamic> _askTxnsAllowed;
  @override
  @JsonKey()
  Map<String, dynamic> get askTxnsAllowed {
    if (_askTxnsAllowed is EqualUnmodifiableMapView) return _askTxnsAllowed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_askTxnsAllowed);
  }

  @override
  String toString() {
    return 'VideoState(videoList: $videoList, isVideoWatched: $isVideoWatched, indexOfVideoPlaying: $indexOfVideoPlaying, isLoading: $isLoading, allVideosWatched: $allVideosWatched, videoListFailureOrSuccess: $videoListFailureOrSuccess, accessCode: $accessCode, isAccessCodeSubmitLoading: $isAccessCodeSubmitLoading, quizByPassFailureOrSuccess: $quizByPassFailureOrSuccess, showSkipButton: $showSkipButton, skipQuizPage: $skipQuizPage, markAllWatchedFailureOrSuccess: $markAllWatchedFailureOrSuccess, transactions: $transactions, showTransactionsError: $showTransactionsError, isMaxTransactionsAllowed: $isMaxTransactionsAllowed, askTxnsAllowed: $askTxnsAllowed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoStateImpl &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList) &&
            (identical(other.isVideoWatched, isVideoWatched) ||
                other.isVideoWatched == isVideoWatched) &&
            (identical(other.indexOfVideoPlaying, indexOfVideoPlaying) ||
                other.indexOfVideoPlaying == indexOfVideoPlaying) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.allVideosWatched, allVideosWatched) ||
                other.allVideosWatched == allVideosWatched) &&
            (identical(other.videoListFailureOrSuccess, videoListFailureOrSuccess) ||
                other.videoListFailureOrSuccess == videoListFailureOrSuccess) &&
            (identical(other.accessCode, accessCode) ||
                other.accessCode == accessCode) &&
            (identical(other.isAccessCodeSubmitLoading,
                    isAccessCodeSubmitLoading) ||
                other.isAccessCodeSubmitLoading == isAccessCodeSubmitLoading) &&
            (identical(other.quizByPassFailureOrSuccess,
                    quizByPassFailureOrSuccess) ||
                other.quizByPassFailureOrSuccess ==
                    quizByPassFailureOrSuccess) &&
            (identical(other.showSkipButton, showSkipButton) ||
                other.showSkipButton == showSkipButton) &&
            (identical(other.skipQuizPage, skipQuizPage) ||
                other.skipQuizPage == skipQuizPage) &&
            (identical(other.markAllWatchedFailureOrSuccess,
                    markAllWatchedFailureOrSuccess) ||
                other.markAllWatchedFailureOrSuccess ==
                    markAllWatchedFailureOrSuccess) &&
            (identical(other.transactions, transactions) ||
                other.transactions == transactions) &&
            (identical(other.showTransactionsError, showTransactionsError) ||
                other.showTransactionsError == showTransactionsError) &&
            (identical(
                    other.isMaxTransactionsAllowed, isMaxTransactionsAllowed) ||
                other.isMaxTransactionsAllowed == isMaxTransactionsAllowed) &&
            const DeepCollectionEquality()
                .equals(other._askTxnsAllowed, _askTxnsAllowed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_videoList),
      isVideoWatched,
      indexOfVideoPlaying,
      isLoading,
      allVideosWatched,
      videoListFailureOrSuccess,
      accessCode,
      isAccessCodeSubmitLoading,
      quizByPassFailureOrSuccess,
      showSkipButton,
      skipQuizPage,
      markAllWatchedFailureOrSuccess,
      transactions,
      showTransactionsError,
      isMaxTransactionsAllowed,
      const DeepCollectionEquality().hash(_askTxnsAllowed));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoStateImplCopyWith<_$VideoStateImpl> get copyWith =>
      __$$VideoStateImplCopyWithImpl<_$VideoStateImpl>(this, _$identity);
}

abstract class _VideoState implements VideoState {
  const factory _VideoState(
      {final List<VideoItem> videoList,
      final bool isVideoWatched,
      final int indexOfVideoPlaying,
      final bool isLoading,
      final bool allVideosWatched,
      final Option<Either<AppErrors, VideoItem>>? videoListFailureOrSuccess,
      final String accessCode,
      final bool isAccessCodeSubmitLoading,
      final Option<Either<AppErrors, Unit>>? quizByPassFailureOrSuccess,
      final bool showSkipButton,
      final bool skipQuizPage,
      final Option<Either<AppErrors, Unit>>? markAllWatchedFailureOrSuccess,
      final String transactions,
      final bool showTransactionsError,
      final bool isMaxTransactionsAllowed,
      final Map<String, dynamic> askTxnsAllowed}) = _$VideoStateImpl;

  @override
  List<VideoItem> get videoList;
  @override
  bool get isVideoWatched;
  @override
  int get indexOfVideoPlaying;
  @override
  bool get isLoading;
  @override
  bool get allVideosWatched;
  @override
  Option<Either<AppErrors, VideoItem>>? get videoListFailureOrSuccess;
  @override
  String get accessCode;
  @override
  bool get isAccessCodeSubmitLoading;
  @override
  Option<Either<AppErrors, Unit>>? get quizByPassFailureOrSuccess;
  @override
  bool get showSkipButton;
  @override
  bool get skipQuizPage;
  @override
  Option<Either<AppErrors, Unit>>? get markAllWatchedFailureOrSuccess;
  @override
  String get transactions;
  @override
  bool get showTransactionsError;
  @override
  bool get isMaxTransactionsAllowed;
  @override
  Map<String, dynamic> get askTxnsAllowed;
  @override
  @JsonKey(ignore: true)
  _$$VideoStateImplCopyWith<_$VideoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

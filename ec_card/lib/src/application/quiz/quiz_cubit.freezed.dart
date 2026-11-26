// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuizState {
  List<QuestionItem> get quizList => throw _privateConstructorUsedError;
  bool get quizLevelPassed => throw _privateConstructorUsedError;
  Option<Either<AppErrors, Unit>> get questionFecthingFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  dynamic get selectedAnswer => throw _privateConstructorUsedError;
  List<Map<String, String>> get selectedOptionsList =>
      throw _privateConstructorUsedError;
  bool get allQuestionsAnswered => throw _privateConstructorUsedError;
  bool get isQuizSubmitLoading => throw _privateConstructorUsedError;
  Option<Either<AppErrors, String>>? get submitQuizFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizStateCopyWith<QuizState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizStateCopyWith<$Res> {
  factory $QuizStateCopyWith(QuizState value, $Res Function(QuizState) then) =
      _$QuizStateCopyWithImpl<$Res, QuizState>;
  @useResult
  $Res call(
      {List<QuestionItem> quizList,
      bool quizLevelPassed,
      Option<Either<AppErrors, Unit>> questionFecthingFailureOrSuccess,
      bool isLoading,
      dynamic selectedAnswer,
      List<Map<String, String>> selectedOptionsList,
      bool allQuestionsAnswered,
      bool isQuizSubmitLoading,
      Option<Either<AppErrors, String>>? submitQuizFailureOrSuccess});
}

/// @nodoc
class _$QuizStateCopyWithImpl<$Res, $Val extends QuizState>
    implements $QuizStateCopyWith<$Res> {
  _$QuizStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizList = null,
    Object? quizLevelPassed = null,
    Object? questionFecthingFailureOrSuccess = null,
    Object? isLoading = null,
    Object? selectedAnswer = freezed,
    Object? selectedOptionsList = null,
    Object? allQuestionsAnswered = null,
    Object? isQuizSubmitLoading = null,
    Object? submitQuizFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      quizList: null == quizList
          ? _value.quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<QuestionItem>,
      quizLevelPassed: null == quizLevelPassed
          ? _value.quizLevelPassed
          : quizLevelPassed // ignore: cast_nullable_to_non_nullable
              as bool,
      questionFecthingFailureOrSuccess: null == questionFecthingFailureOrSuccess
          ? _value.questionFecthingFailureOrSuccess
          : questionFecthingFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, Unit>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAnswer: freezed == selectedAnswer
          ? _value.selectedAnswer
          : selectedAnswer // ignore: cast_nullable_to_non_nullable
              as dynamic,
      selectedOptionsList: null == selectedOptionsList
          ? _value.selectedOptionsList
          : selectedOptionsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      allQuestionsAnswered: null == allQuestionsAnswered
          ? _value.allQuestionsAnswered
          : allQuestionsAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuizSubmitLoading: null == isQuizSubmitLoading
          ? _value.isQuizSubmitLoading
          : isQuizSubmitLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      submitQuizFailureOrSuccess: freezed == submitQuizFailureOrSuccess
          ? _value.submitQuizFailureOrSuccess
          : submitQuizFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, String>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizStateImplCopyWith<$Res>
    implements $QuizStateCopyWith<$Res> {
  factory _$$QuizStateImplCopyWith(
          _$QuizStateImpl value, $Res Function(_$QuizStateImpl) then) =
      __$$QuizStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuestionItem> quizList,
      bool quizLevelPassed,
      Option<Either<AppErrors, Unit>> questionFecthingFailureOrSuccess,
      bool isLoading,
      dynamic selectedAnswer,
      List<Map<String, String>> selectedOptionsList,
      bool allQuestionsAnswered,
      bool isQuizSubmitLoading,
      Option<Either<AppErrors, String>>? submitQuizFailureOrSuccess});
}

/// @nodoc
class __$$QuizStateImplCopyWithImpl<$Res>
    extends _$QuizStateCopyWithImpl<$Res, _$QuizStateImpl>
    implements _$$QuizStateImplCopyWith<$Res> {
  __$$QuizStateImplCopyWithImpl(
      _$QuizStateImpl _value, $Res Function(_$QuizStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizList = null,
    Object? quizLevelPassed = null,
    Object? questionFecthingFailureOrSuccess = null,
    Object? isLoading = null,
    Object? selectedAnswer = freezed,
    Object? selectedOptionsList = null,
    Object? allQuestionsAnswered = null,
    Object? isQuizSubmitLoading = null,
    Object? submitQuizFailureOrSuccess = freezed,
  }) {
    return _then(_$QuizStateImpl(
      quizList: null == quizList
          ? _value._quizList
          : quizList // ignore: cast_nullable_to_non_nullable
              as List<QuestionItem>,
      quizLevelPassed: null == quizLevelPassed
          ? _value.quizLevelPassed
          : quizLevelPassed // ignore: cast_nullable_to_non_nullable
              as bool,
      questionFecthingFailureOrSuccess: null == questionFecthingFailureOrSuccess
          ? _value.questionFecthingFailureOrSuccess
          : questionFecthingFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, Unit>>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedAnswer:
          freezed == selectedAnswer ? _value.selectedAnswer! : selectedAnswer,
      selectedOptionsList: null == selectedOptionsList
          ? _value._selectedOptionsList
          : selectedOptionsList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      allQuestionsAnswered: null == allQuestionsAnswered
          ? _value.allQuestionsAnswered
          : allQuestionsAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      isQuizSubmitLoading: null == isQuizSubmitLoading
          ? _value.isQuizSubmitLoading
          : isQuizSubmitLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      submitQuizFailureOrSuccess: freezed == submitQuizFailureOrSuccess
          ? _value.submitQuizFailureOrSuccess
          : submitQuizFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, String>>?,
    ));
  }
}

/// @nodoc

class _$QuizStateImpl implements _QuizState {
  const _$QuizStateImpl(
      {final List<QuestionItem> quizList = const [],
      this.quizLevelPassed = false,
      required this.questionFecthingFailureOrSuccess,
      this.isLoading = false,
      this.selectedAnswer = int,
      final List<Map<String, String>> selectedOptionsList = const [],
      this.allQuestionsAnswered = false,
      this.isQuizSubmitLoading = false,
      this.submitQuizFailureOrSuccess})
      : _quizList = quizList,
        _selectedOptionsList = selectedOptionsList;

  final List<QuestionItem> _quizList;
  @override
  @JsonKey()
  List<QuestionItem> get quizList {
    if (_quizList is EqualUnmodifiableListView) return _quizList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quizList);
  }

  @override
  @JsonKey()
  final bool quizLevelPassed;
  @override
  final Option<Either<AppErrors, Unit>> questionFecthingFailureOrSuccess;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final dynamic selectedAnswer;
  final List<Map<String, String>> _selectedOptionsList;
  @override
  @JsonKey()
  List<Map<String, String>> get selectedOptionsList {
    if (_selectedOptionsList is EqualUnmodifiableListView)
      return _selectedOptionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedOptionsList);
  }

  @override
  @JsonKey()
  final bool allQuestionsAnswered;
  @override
  @JsonKey()
  final bool isQuizSubmitLoading;
  @override
  final Option<Either<AppErrors, String>>? submitQuizFailureOrSuccess;

  @override
  String toString() {
    return 'QuizState(quizList: $quizList, quizLevelPassed: $quizLevelPassed, questionFecthingFailureOrSuccess: $questionFecthingFailureOrSuccess, isLoading: $isLoading, selectedAnswer: $selectedAnswer, selectedOptionsList: $selectedOptionsList, allQuestionsAnswered: $allQuestionsAnswered, isQuizSubmitLoading: $isQuizSubmitLoading, submitQuizFailureOrSuccess: $submitQuizFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizStateImpl &&
            const DeepCollectionEquality().equals(other._quizList, _quizList) &&
            (identical(other.quizLevelPassed, quizLevelPassed) ||
                other.quizLevelPassed == quizLevelPassed) &&
            (identical(other.questionFecthingFailureOrSuccess,
                    questionFecthingFailureOrSuccess) ||
                other.questionFecthingFailureOrSuccess ==
                    questionFecthingFailureOrSuccess) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other.selectedAnswer, selectedAnswer) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptionsList, _selectedOptionsList) &&
            (identical(other.allQuestionsAnswered, allQuestionsAnswered) ||
                other.allQuestionsAnswered == allQuestionsAnswered) &&
            (identical(other.isQuizSubmitLoading, isQuizSubmitLoading) ||
                other.isQuizSubmitLoading == isQuizSubmitLoading) &&
            (identical(other.submitQuizFailureOrSuccess,
                    submitQuizFailureOrSuccess) ||
                other.submitQuizFailureOrSuccess ==
                    submitQuizFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quizList),
      quizLevelPassed,
      questionFecthingFailureOrSuccess,
      isLoading,
      const DeepCollectionEquality().hash(selectedAnswer),
      const DeepCollectionEquality().hash(_selectedOptionsList),
      allQuestionsAnswered,
      isQuizSubmitLoading,
      submitQuizFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      __$$QuizStateImplCopyWithImpl<_$QuizStateImpl>(this, _$identity);
}

abstract class _QuizState implements QuizState {
  const factory _QuizState(
      {final List<QuestionItem> quizList,
      final bool quizLevelPassed,
      required final Option<Either<AppErrors, Unit>>
          questionFecthingFailureOrSuccess,
      final bool isLoading,
      final dynamic selectedAnswer,
      final List<Map<String, String>> selectedOptionsList,
      final bool allQuestionsAnswered,
      final bool isQuizSubmitLoading,
      final Option<Either<AppErrors, String>>?
          submitQuizFailureOrSuccess}) = _$QuizStateImpl;

  @override
  List<QuestionItem> get quizList;
  @override
  bool get quizLevelPassed;
  @override
  Option<Either<AppErrors, Unit>> get questionFecthingFailureOrSuccess;
  @override
  bool get isLoading;
  @override
  dynamic get selectedAnswer;
  @override
  List<Map<String, String>> get selectedOptionsList;
  @override
  bool get allQuestionsAnswered;
  @override
  bool get isQuizSubmitLoading;
  @override
  Option<Either<AppErrors, String>>? get submitQuizFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$QuizStateImplCopyWith<_$QuizStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

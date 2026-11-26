// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionItem _$QuestionItemFromJson(Map<String, dynamic> json) {
  return _QuestionItem.fromJson(json);
}

/// @nodoc
mixin _$QuestionItem {
  @JsonKey(name: 'questionTitle')
  String get questionTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'questionOptions')
  List<OptionItem> get questionOptions => throw _privateConstructorUsedError;
  String get selectionOption => throw _privateConstructorUsedError;
  @JsonKey(name: 'questionBankId')
  String get questionBankId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionItemCopyWith<QuestionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionItemCopyWith<$Res> {
  factory $QuestionItemCopyWith(
          QuestionItem value, $Res Function(QuestionItem) then) =
      _$QuestionItemCopyWithImpl<$Res, QuestionItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'questionTitle') String questionTitle,
      @JsonKey(name: 'questionOptions') List<OptionItem> questionOptions,
      String selectionOption,
      @JsonKey(name: 'questionBankId') String questionBankId});
}

/// @nodoc
class _$QuestionItemCopyWithImpl<$Res, $Val extends QuestionItem>
    implements $QuestionItemCopyWith<$Res> {
  _$QuestionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? questionOptions = null,
    Object? selectionOption = null,
    Object? questionBankId = null,
  }) {
    return _then(_value.copyWith(
      questionTitle: null == questionTitle
          ? _value.questionTitle
          : questionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questionOptions: null == questionOptions
          ? _value.questionOptions
          : questionOptions // ignore: cast_nullable_to_non_nullable
              as List<OptionItem>,
      selectionOption: null == selectionOption
          ? _value.selectionOption
          : selectionOption // ignore: cast_nullable_to_non_nullable
              as String,
      questionBankId: null == questionBankId
          ? _value.questionBankId
          : questionBankId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionItemImplCopyWith<$Res>
    implements $QuestionItemCopyWith<$Res> {
  factory _$$QuestionItemImplCopyWith(
          _$QuestionItemImpl value, $Res Function(_$QuestionItemImpl) then) =
      __$$QuestionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'questionTitle') String questionTitle,
      @JsonKey(name: 'questionOptions') List<OptionItem> questionOptions,
      String selectionOption,
      @JsonKey(name: 'questionBankId') String questionBankId});
}

/// @nodoc
class __$$QuestionItemImplCopyWithImpl<$Res>
    extends _$QuestionItemCopyWithImpl<$Res, _$QuestionItemImpl>
    implements _$$QuestionItemImplCopyWith<$Res> {
  __$$QuestionItemImplCopyWithImpl(
      _$QuestionItemImpl _value, $Res Function(_$QuestionItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionTitle = null,
    Object? questionOptions = null,
    Object? selectionOption = null,
    Object? questionBankId = null,
  }) {
    return _then(_$QuestionItemImpl(
      questionTitle: null == questionTitle
          ? _value.questionTitle
          : questionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      questionOptions: null == questionOptions
          ? _value._questionOptions
          : questionOptions // ignore: cast_nullable_to_non_nullable
              as List<OptionItem>,
      selectionOption: null == selectionOption
          ? _value.selectionOption
          : selectionOption // ignore: cast_nullable_to_non_nullable
              as String,
      questionBankId: null == questionBankId
          ? _value.questionBankId
          : questionBankId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionItemImpl implements _QuestionItem {
  const _$QuestionItemImpl(
      {@JsonKey(name: 'questionTitle') this.questionTitle = '',
      @JsonKey(name: 'questionOptions')
      final List<OptionItem> questionOptions = const [],
      this.selectionOption = '',
      @JsonKey(name: 'questionBankId') this.questionBankId = ''})
      : _questionOptions = questionOptions;

  factory _$QuestionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionItemImplFromJson(json);

  @override
  @JsonKey(name: 'questionTitle')
  final String questionTitle;
  final List<OptionItem> _questionOptions;
  @override
  @JsonKey(name: 'questionOptions')
  List<OptionItem> get questionOptions {
    if (_questionOptions is EqualUnmodifiableListView) return _questionOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionOptions);
  }

  @override
  @JsonKey()
  final String selectionOption;
  @override
  @JsonKey(name: 'questionBankId')
  final String questionBankId;

  @override
  String toString() {
    return 'QuestionItem(questionTitle: $questionTitle, questionOptions: $questionOptions, selectionOption: $selectionOption, questionBankId: $questionBankId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionItemImpl &&
            (identical(other.questionTitle, questionTitle) ||
                other.questionTitle == questionTitle) &&
            const DeepCollectionEquality()
                .equals(other._questionOptions, _questionOptions) &&
            (identical(other.selectionOption, selectionOption) ||
                other.selectionOption == selectionOption) &&
            (identical(other.questionBankId, questionBankId) ||
                other.questionBankId == questionBankId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      questionTitle,
      const DeepCollectionEquality().hash(_questionOptions),
      selectionOption,
      questionBankId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionItemImplCopyWith<_$QuestionItemImpl> get copyWith =>
      __$$QuestionItemImplCopyWithImpl<_$QuestionItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionItemImplToJson(
      this,
    );
  }
}

abstract class _QuestionItem implements QuestionItem {
  const factory _QuestionItem(
      {@JsonKey(name: 'questionTitle') final String questionTitle,
      @JsonKey(name: 'questionOptions') final List<OptionItem> questionOptions,
      final String selectionOption,
      @JsonKey(name: 'questionBankId')
      final String questionBankId}) = _$QuestionItemImpl;

  factory _QuestionItem.fromJson(Map<String, dynamic> json) =
      _$QuestionItemImpl.fromJson;

  @override
  @JsonKey(name: 'questionTitle')
  String get questionTitle;
  @override
  @JsonKey(name: 'questionOptions')
  List<OptionItem> get questionOptions;
  @override
  String get selectionOption;
  @override
  @JsonKey(name: 'questionBankId')
  String get questionBankId;
  @override
  @JsonKey(ignore: true)
  _$$QuestionItemImplCopyWith<_$QuestionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

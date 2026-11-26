// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:ec_card_app/src/data/quiz/model/option_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_item.g.dart';
part 'question_item.freezed.dart';

QuestionItem questionItemFromJson(String str) =>
    QuestionItem.fromJson(jsonDecode(str));

@freezed
abstract class QuestionItem with _$QuestionItem {
  const factory QuestionItem({
    @JsonKey(name: 'questionTitle') @Default('') String questionTitle,
    @JsonKey(name: 'questionOptions')
    @Default([])
    List<OptionItem> questionOptions,
    @Default('') String selectionOption,
    @JsonKey(name: 'questionBankId') @Default('') String questionBankId,
  }) = _QuestionItem;

  factory QuestionItem.fromJson(dynamic json) => _$QuestionItemFromJson(json);

  factory QuestionItem.convertIntoQuestionItem(dynamic json) => QuestionItem(
    questionTitle: json['questionTitle'],
    questionOptions: convertIntoOptionsList(json['questionOptions']),
    questionBankId: json['questionBankId'],
    selectionOption: json['selectionOption'] ?? '',
  );
}

List<QuestionItem> convertIntoListOfQuestionItem(Iterable<dynamic> list) {
  List<QuestionItem> resultList = [];
  Future.forEach(list, (element) {
    resultList.add(QuestionItem.convertIntoQuestionItem(element));
  });

  return resultList;
}

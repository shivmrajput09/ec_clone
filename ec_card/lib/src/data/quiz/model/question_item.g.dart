// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionItemImpl _$$QuestionItemImplFromJson(Map<String, dynamic> json) =>
    _$QuestionItemImpl(
      questionTitle: json['questionTitle'] as String? ?? '',
      questionOptions: (json['questionOptions'] as List<dynamic>?)
              ?.map(OptionItem.fromJson)
              .toList() ??
          const [],
      selectionOption: json['selectionOption'] as String? ?? '',
      questionBankId: json['questionBankId'] as String? ?? '',
    );

Map<String, dynamic> _$$QuestionItemImplToJson(_$QuestionItemImpl instance) =>
    <String, dynamic>{
      'questionTitle': instance.questionTitle,
      'questionOptions': instance.questionOptions,
      'selectionOption': instance.selectionOption,
      'questionBankId': instance.questionBankId,
    };

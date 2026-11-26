// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileDataImpl _$$UserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileDataImpl(
      profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
      questions: Questions.fromJson(json['questions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileDataImplToJson(
        _$UserProfileDataImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'questions': instance.questions,
    };

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      mobile: json['mobile'] as String,
      postalCode: json['postalCode'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'postalCode': instance.postalCode,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
    };

_$QuestionsImpl _$$QuestionsImplFromJson(Map<String, dynamic> json) =>
    _$QuestionsImpl(
      show: json['show'] as bool,
      list: (json['list'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionsImplToJson(_$QuestionsImpl instance) =>
    <String, dynamic>{
      'show': instance.show,
      'list': instance.list,
    };

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      choiceType: json['choiceType'] as String,
      required: json['required'] as bool,
      enabled: json['enabled'] as bool,
      type: json['type'] as String,
      title: json['title'] as String,
      questionType: json['questionType'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) =>
    <String, dynamic>{
      'choiceType': instance.choiceType,
      'required': instance.required,
      'enabled': instance.enabled,
      'type': instance.type,
      'title': instance.title,
      'questionType': instance.questionType,
      'options': instance.options,
    };

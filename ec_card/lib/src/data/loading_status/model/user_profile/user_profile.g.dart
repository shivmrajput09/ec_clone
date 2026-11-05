// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) =>
    _UserProfileData(
      profile: Profile.fromJson(json['profile'] as Map<String, dynamic>),
      questions: Questions.fromJson(json['questions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserProfileDataToJson(_UserProfileData instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'questions': instance.questions,
    };

_Profile _$ProfileFromJson(Map<String, dynamic> json) => _Profile(
      mobile: json['mobile'] as String,
      postalCode: json['postalCode'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$ProfileToJson(_Profile instance) => <String, dynamic>{
      'mobile': instance.mobile,
      'postalCode': instance.postalCode,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
    };

_Questions _$QuestionsFromJson(Map<String, dynamic> json) => _Questions(
      show: json['show'] as bool,
      list: (json['list'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionsToJson(_Questions instance) =>
    <String, dynamic>{
      'show': instance.show,
      'list': instance.list,
    };

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
      choiceType: json['choiceType'] as String,
      required: json['required'] as bool,
      enabled: json['enabled'] as bool,
      type: json['type'] as String,
      title: json['title'] as String,
      questionType: json['questionType'] as String,
      options:
          (json['options'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$QuestionToJson(_Question instance) => <String, dynamic>{
      'choiceType': instance.choiceType,
      'required': instance.required,
      'enabled': instance.enabled,
      'type': instance.type,
      'title': instance.title,
      'questionType': instance.questionType,
      'options': instance.options,
    };

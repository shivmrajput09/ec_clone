import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

// Convert JSON string to UserProfileData object
UserProfileData userProfileDataFromJson(String str) =>
    UserProfileData.fromJson(jsonDecode(str));

// Convert UserProfileData object to JSON string
String userProfileDataToJson(UserProfileData data) =>
    json.encode(data.toJson());

@freezed
abstract class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    required Profile profile,
    required Questions questions,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);
}

@freezed
abstract class Profile with _$Profile {
  const factory Profile({
    required String mobile,
    required String postalCode,
    required String dateOfBirth,
    required String gender,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
abstract class Questions with _$Questions {
  const factory Questions({
    required bool show,
    required List<Question> list,
  }) = _Questions;

  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);
}

@freezed
abstract class Question with _$Question {
  const factory Question({
    required String choiceType,
    required bool required,
    required bool enabled,
    required String type,
    required String title,
    required String questionType,
    required List<String> options,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
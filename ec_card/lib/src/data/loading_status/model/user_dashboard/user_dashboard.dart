// ignore_for_file: invalid_annotation_target
import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dashboard.freezed.dart';
part 'user_dashboard.g.dart';

UserDashboardData userDashboardDataFromJson(String str) =>
    UserDashboardData.fromJson(jsonDecode(str));

String userDashboardDataToJson(UserDashboardData data) =>
    json.encode(data.toJson());

@freezed
class UserDashboardData with _$UserDashboardData {
  const factory UserDashboardData({
    @JsonKey(name: 'unReadNotifications') @Default(0) int unReadNotifications,
    @JsonKey(name: 'brandLogo') @Default('') String brandLogo,
    @JsonKey(name: 'tncWebUrl') @Default('') String tncWebUrl,
    @JsonKey(name: 'privacyWebUrl') @Default('') String privacyWebUrl,
    @JsonKey(name: 'message') @Default('') String message,
    @JsonKey(name: 'support') @Default({}) Map<String, dynamic> support,
  }) = _UserDashboardData;

  factory UserDashboardData.fromJson(Map<String, dynamic> json) =>
      _$UserDashboardDataFromJson(json);
}

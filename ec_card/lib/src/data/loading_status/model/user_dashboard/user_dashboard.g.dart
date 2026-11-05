// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDashboardData _$UserDashboardDataFromJson(Map<String, dynamic> json) =>
    _UserDashboardData(
      unReadNotifications: (json['unReadNotifications'] as num?)?.toInt() ?? 0,
      brandLogo: json['brandLogo'] as String? ?? '',
      tncWebUrl: json['tncWebUrl'] as String? ?? '',
      privacyWebUrl: json['privacyWebUrl'] as String? ?? '',
      message: json['message'] as String? ?? '',
      support: json['support'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$UserDashboardDataToJson(_UserDashboardData instance) =>
    <String, dynamic>{
      'unReadNotifications': instance.unReadNotifications,
      'brandLogo': instance.brandLogo,
      'tncWebUrl': instance.tncWebUrl,
      'privacyWebUrl': instance.privacyWebUrl,
      'message': instance.message,
      'support': instance.support,
    };

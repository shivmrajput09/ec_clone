// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dashboard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDashboardDataImpl _$$UserDashboardDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDashboardDataImpl(
      unReadNotifications: (json['unReadNotifications'] as num?)?.toInt() ?? 0,
      brandLogo: json['brandLogo'] as String? ?? '',
      tncWebUrl: json['tncWebUrl'] as String? ?? '',
      privacyWebUrl: json['privacyWebUrl'] as String? ?? '',
      message: json['message'] as String? ?? '',
      support: json['support'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$UserDashboardDataImplToJson(
        _$UserDashboardDataImpl instance) =>
    <String, dynamic>{
      'unReadNotifications': instance.unReadNotifications,
      'brandLogo': instance.brandLogo,
      'tncWebUrl': instance.tncWebUrl,
      'privacyWebUrl': instance.privacyWebUrl,
      'message': instance.message,
      'support': instance.support,
    };

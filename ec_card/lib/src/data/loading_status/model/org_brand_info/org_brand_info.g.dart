// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_brand_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrgBrandInfoData _$OrgBrandInfoDataFromJson(Map<String, dynamic> json) =>
    _OrgBrandInfoData(
      orgName: json['orgName'] as String? ?? '',
      city: json['city'] as String? ?? '',
      county: json['county'] as String? ?? '',
      country: json['country'] as String? ?? '',
      countryCode: json['countryCode'] as String? ?? '',
      copyrightText: json['copyrightText'] as String? ?? '',
      brandLogo: json['brandLogo'] as String? ?? '',
      isPublished: json['isPublished'] as bool? ?? false,
      isActivated: json['isActivated'] as bool? ?? false,
      isDeleted: json['isDeleted'] as bool? ?? false,
      orgId: json['orgId'] as String? ?? '',
      created: json['created'] as String? ?? '',
      lastModified: json['lastModified'] as String? ?? '',
    );

Map<String, dynamic> _$OrgBrandInfoDataToJson(_OrgBrandInfoData instance) =>
    <String, dynamic>{
      'orgName': instance.orgName,
      'city': instance.city,
      'county': instance.county,
      'country': instance.country,
      'countryCode': instance.countryCode,
      'copyrightText': instance.copyrightText,
      'brandLogo': instance.brandLogo,
      'isPublished': instance.isPublished,
      'isActivated': instance.isActivated,
      'isDeleted': instance.isDeleted,
      'orgId': instance.orgId,
      'created': instance.created,
      'lastModified': instance.lastModified,
    };

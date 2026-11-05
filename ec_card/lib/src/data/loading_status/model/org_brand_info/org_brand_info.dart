// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'org_brand_info.freezed.dart';

part 'org_brand_info.g.dart';

OrgBrandInfoData orgBrandInfoDataFromJson(String str) =>
    OrgBrandInfoData.fromJson(jsonDecode(str));

String orgBrandInfoDataToJson(OrgBrandInfoData data) =>
    json.encode(data.toJson());

@freezed
abstract class OrgBrandInfoData with _$OrgBrandInfoData {
  const factory OrgBrandInfoData({
    @JsonKey(name: 'orgName') @Default('') String orgName,
    @JsonKey(name: 'city') @Default('') String city,
    @JsonKey(name: 'county') @Default('') String county,
    @JsonKey(name: 'country') @Default('') String country,
    @JsonKey(name: 'countryCode') @Default('') String countryCode,
    @JsonKey(name: 'copyrightText') @Default('') String copyrightText,
    @JsonKey(name: 'brandLogo') @Default('') String brandLogo,
    @JsonKey(name: 'isPublished') @Default(false) bool isPublished,
    @JsonKey(name: 'isActivated') @Default(false) bool isActivated,
    @JsonKey(name: 'isDeleted') @Default(false) bool isDeleted,
    @JsonKey(name: 'orgId') @Default('') String orgId,
    @JsonKey(name: 'created') @Default('') String created,
    @JsonKey(name: 'lastModified') @Default('') String lastModified,
  }) = _OrgBrandInfoData;

  factory OrgBrandInfoData.fromJson(Map<String, dynamic> json) =>
      _$OrgBrandInfoDataFromJson(json);
}
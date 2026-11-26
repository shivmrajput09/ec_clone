// ignore_for_file: invalid_annotation_target

import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_item.freezed.dart';

part 'education_item.g.dart';

@freezed
class EducationItem with _$EducationItem {
  const factory EducationItem({
    @JsonKey(name: 'type') @Default('') String type,
    @JsonKey(name: 'documentTitle') @Default('') String documentTitle,
    @JsonKey(name: 'documentPages') @Default(0) int documentPages,
    @JsonKey(name: 'documentSize') @Default('') String documentSize,
    @JsonKey(name: 'documentFile') @Default('') String documentFile,
    @JsonKey(name: 'videoTitle') @Default('') String videoTitle,
    @JsonKey(name: 'videoThumbnail') @Default('') String videoThumbnail,
    @JsonKey(name: 'videoAuthor') @Default('') String videoAuthor,
    @JsonKey(name: 'videoDuration') @Default(0.0) double videoDuration,
    @JsonKey(name: 'videoUrl') @Default('') String videoUrl,
    @JsonKey(name: 'videoSize') @Default('') String videoSize,
    // Sent for every education video. "direct" plays in the app's own
    // player; "youtube" has to go through an embed, since a YouTube page is
    // not a media file. Older rows carry neither, so the URL is sniffed too.
    @JsonKey(name: 'videoProvider') @Default('') String videoProvider,
    @JsonKey(name: 'videoId') @Default('') String videoId,
    @JsonKey(name: 'embedUrl') @Default('') String embedUrl,
    @JsonKey(name: 'previewType') @Default('') String previewType,
    @JsonKey(name: 'views') @Default(0) int views,
    @JsonKey(name: 'isActive') @Default(false) bool isActive,
    @JsonKey(name: 'isPublished') @Default(false) bool isPublished,
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(name: 'educationId') @Default('') String educationId,
    @JsonKey(name: 'created') @Default('') String created,
    @JsonKey(name: 'lastModified') @Default('') String lastModified,
    @JsonKey(name: '__v') @Default(0) int version,
    @JsonKey(name: 'durationText') @Default('') String durationText,
    @JsonKey(name: 'createdText') @Default('') String createdText,
  }) = _EducationItem;

  factory EducationItem.fromJson(dynamic json) => _$EducationItemFromJson(json);
}

EducationItem educationItemFromJson(String str) =>
    EducationItem.fromJson(jsonDecode(str));

String educationItemToJson(EducationItem data) => json.encode(data.toJson());

List<EducationItem> convertIntoListOfEducationItems(Iterable<dynamic> list) {
  List<EducationItem> resultList = [];
  Future.forEach(list, (element) {
    resultList.add(EducationItem.fromJson(element));
  });

  return resultList;
}

// ignore_for_file: invalid_annotation_target
import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_item.g.dart';
part 'video_item.freezed.dart';

VideoItem videoItemFromJson(String str) => VideoItem.fromJson(jsonDecode(str));

@freezed
abstract class VideoItem with _$VideoItem {
  const factory VideoItem({
    @JsonKey(name: 'videoPath') @Default('') String videoPath,
    @JsonKey(name: 'videoTitle') @Default('') String videoTitle,
    @JsonKey(name: 'videoDescription') @Default('') String videoDescription,
    @JsonKey(name: 'isPublished') @Default(false) bool isPublished,
    @JsonKey(name: 'isActivated') @Default(false) bool isActivated,
    @JsonKey(name: 'videoId') @Default('') String videoId,
    @JsonKey(name: 'created') @Default('') String created,
    @JsonKey(name: 'lastModified') @Default('') String lastModified,
    @JsonKey(name: 'watched') @Default(false) bool watched,
  }) = _VideoItem;

  factory VideoItem.fromJson(dynamic json) => _$VideoItemFromJson(json);
}
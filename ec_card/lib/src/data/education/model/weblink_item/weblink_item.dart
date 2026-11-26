// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weblink_item.freezed.dart';

part 'weblink_item.g.dart';

/// A link an organisation has shared on the Weblinks tab.
///
/// Three kinds arrive on the same endpoint, told apart by [previewType]:
/// "html5_video" for a video file, "iframe" for YouTube or Vimeo, and "none"
/// for an ordinary web page.
@freezed
class WeblinkItem with _$WeblinkItem {
  const factory WeblinkItem({
    @JsonKey(name: 'educationId') @Default('') String educationId,
    @JsonKey(name: 'type') @Default('') String type,
    @JsonKey(name: 'weblinkTitle') @Default('') String weblinkTitle,
    @JsonKey(name: 'weblinkUrl') @Default('') String weblinkUrl,
    @JsonKey(name: 'weblinkBgColor') @Default('') String weblinkBgColor,
    @JsonKey(name: 'weblinkType') @Default('') String weblinkType,
    @JsonKey(name: 'isVideo') @Default(false) bool isVideo,
    @JsonKey(name: 'linkType') @Default('') String linkType,
    @JsonKey(name: 'previewType') @Default('none') String previewType,
    @JsonKey(name: 'videoProvider') @Default('') String videoProvider,
    @JsonKey(name: 'embedUrl') @Default('') String embedUrl,
    @JsonKey(name: 'videoId') @Default('') String videoId,
    @JsonKey(name: 'thumbnailUrl') @Default('') String thumbnailUrl,
    @JsonKey(name: 'created') @Default('') String created,
    @JsonKey(name: 'createdText') @Default('') String createdText,
  }) = _WeblinkItem;

  factory WeblinkItem.fromJson(dynamic json) => _$WeblinkItemFromJson(json);
}

List<WeblinkItem> convertIntoListOfWeblinkItems(Iterable<dynamic> list) =>
    list.map(WeblinkItem.fromJson).toList();

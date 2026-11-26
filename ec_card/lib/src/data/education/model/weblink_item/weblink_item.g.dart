// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weblink_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeblinkItemImpl _$$WeblinkItemImplFromJson(Map<String, dynamic> json) =>
    _$WeblinkItemImpl(
      educationId: json['educationId'] as String? ?? '',
      type: json['type'] as String? ?? '',
      weblinkTitle: json['weblinkTitle'] as String? ?? '',
      weblinkUrl: json['weblinkUrl'] as String? ?? '',
      weblinkBgColor: json['weblinkBgColor'] as String? ?? '',
      weblinkType: json['weblinkType'] as String? ?? '',
      isVideo: json['isVideo'] as bool? ?? false,
      linkType: json['linkType'] as String? ?? '',
      previewType: json['previewType'] as String? ?? 'none',
      videoProvider: json['videoProvider'] as String? ?? '',
      embedUrl: json['embedUrl'] as String? ?? '',
      videoId: json['videoId'] as String? ?? '',
      thumbnailUrl: json['thumbnailUrl'] as String? ?? '',
      created: json['created'] as String? ?? '',
      createdText: json['createdText'] as String? ?? '',
    );

Map<String, dynamic> _$$WeblinkItemImplToJson(_$WeblinkItemImpl instance) =>
    <String, dynamic>{
      'educationId': instance.educationId,
      'type': instance.type,
      'weblinkTitle': instance.weblinkTitle,
      'weblinkUrl': instance.weblinkUrl,
      'weblinkBgColor': instance.weblinkBgColor,
      'weblinkType': instance.weblinkType,
      'isVideo': instance.isVideo,
      'linkType': instance.linkType,
      'previewType': instance.previewType,
      'videoProvider': instance.videoProvider,
      'embedUrl': instance.embedUrl,
      'videoId': instance.videoId,
      'thumbnailUrl': instance.thumbnailUrl,
      'created': instance.created,
      'createdText': instance.createdText,
    };

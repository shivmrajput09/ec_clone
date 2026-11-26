// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoItemImpl _$$VideoItemImplFromJson(Map<String, dynamic> json) =>
    _$VideoItemImpl(
      videoPath: json['videoPath'] as String? ?? '',
      videoTitle: json['videoTitle'] as String? ?? '',
      videoDescription: json['videoDescription'] as String? ?? '',
      isPublished: json['isPublished'] as bool? ?? false,
      isActivated: json['isActivated'] as bool? ?? false,
      videoId: json['videoId'] as String? ?? '',
      created: json['created'] as String? ?? '',
      lastModified: json['lastModified'] as String? ?? '',
      watched: json['watched'] as bool? ?? false,
    );

Map<String, dynamic> _$$VideoItemImplToJson(_$VideoItemImpl instance) =>
    <String, dynamic>{
      'videoPath': instance.videoPath,
      'videoTitle': instance.videoTitle,
      'videoDescription': instance.videoDescription,
      'isPublished': instance.isPublished,
      'isActivated': instance.isActivated,
      'videoId': instance.videoId,
      'created': instance.created,
      'lastModified': instance.lastModified,
      'watched': instance.watched,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EducationItemImpl _$$EducationItemImplFromJson(Map<String, dynamic> json) =>
    _$EducationItemImpl(
      type: json['type'] as String? ?? '',
      documentTitle: json['documentTitle'] as String? ?? '',
      documentPages: (json['documentPages'] as num?)?.toInt() ?? 0,
      documentSize: json['documentSize'] as String? ?? '',
      documentFile: json['documentFile'] as String? ?? '',
      videoTitle: json['videoTitle'] as String? ?? '',
      videoThumbnail: json['videoThumbnail'] as String? ?? '',
      videoAuthor: json['videoAuthor'] as String? ?? '',
      videoDuration: (json['videoDuration'] as num?)?.toDouble() ?? 0.0,
      videoUrl: json['videoUrl'] as String? ?? '',
      videoSize: json['videoSize'] as String? ?? '',
      videoProvider: json['videoProvider'] as String? ?? '',
      videoId: json['videoId'] as String? ?? '',
      embedUrl: json['embedUrl'] as String? ?? '',
      previewType: json['previewType'] as String? ?? '',
      views: (json['views'] as num?)?.toInt() ?? 0,
      isActive: json['isActive'] as bool? ?? false,
      isPublished: json['isPublished'] as bool? ?? false,
      id: json['_id'] as String? ?? '',
      educationId: json['educationId'] as String? ?? '',
      created: json['created'] as String? ?? '',
      lastModified: json['lastModified'] as String? ?? '',
      version: (json['__v'] as num?)?.toInt() ?? 0,
      durationText: json['durationText'] as String? ?? '',
      createdText: json['createdText'] as String? ?? '',
    );

Map<String, dynamic> _$$EducationItemImplToJson(_$EducationItemImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'documentTitle': instance.documentTitle,
      'documentPages': instance.documentPages,
      'documentSize': instance.documentSize,
      'documentFile': instance.documentFile,
      'videoTitle': instance.videoTitle,
      'videoThumbnail': instance.videoThumbnail,
      'videoAuthor': instance.videoAuthor,
      'videoDuration': instance.videoDuration,
      'videoUrl': instance.videoUrl,
      'videoSize': instance.videoSize,
      'videoProvider': instance.videoProvider,
      'videoId': instance.videoId,
      'embedUrl': instance.embedUrl,
      'previewType': instance.previewType,
      'views': instance.views,
      'isActive': instance.isActive,
      'isPublished': instance.isPublished,
      '_id': instance.id,
      'educationId': instance.educationId,
      'created': instance.created,
      'lastModified': instance.lastModified,
      '__v': instance.version,
      'durationText': instance.durationText,
      'createdText': instance.createdText,
    };

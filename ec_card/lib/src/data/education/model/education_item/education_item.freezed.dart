// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EducationItem _$EducationItemFromJson(Map<String, dynamic> json) {
  return _EducationItem.fromJson(json);
}

/// @nodoc
mixin _$EducationItem {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'documentTitle')
  String get documentTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'documentPages')
  int get documentPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'documentSize')
  String get documentSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'documentFile')
  String get documentFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoTitle')
  String get videoTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoThumbnail')
  String get videoThumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoAuthor')
  String get videoAuthor => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoDuration')
  double get videoDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoUrl')
  String get videoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoSize')
  String get videoSize =>
      throw _privateConstructorUsedError; // Sent for every education video. "direct" plays in the app's own
// player; "youtube" has to go through an embed, since a YouTube page is
// not a media file. Older rows carry neither, so the URL is sniffed too.
  @JsonKey(name: 'videoProvider')
  String get videoProvider => throw _privateConstructorUsedError;
  @JsonKey(name: 'videoId')
  String get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'embedUrl')
  String get embedUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'previewType')
  String get previewType => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  int get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'isActive')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPublished')
  bool get isPublished => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'educationId')
  String get educationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  String get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastModified')
  String get lastModified => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'durationText')
  String get durationText => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdText')
  String get createdText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationItemCopyWith<EducationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationItemCopyWith<$Res> {
  factory $EducationItemCopyWith(
          EducationItem value, $Res Function(EducationItem) then) =
      _$EducationItemCopyWithImpl<$Res, EducationItem>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'documentTitle') String documentTitle,
      @JsonKey(name: 'documentPages') int documentPages,
      @JsonKey(name: 'documentSize') String documentSize,
      @JsonKey(name: 'documentFile') String documentFile,
      @JsonKey(name: 'videoTitle') String videoTitle,
      @JsonKey(name: 'videoThumbnail') String videoThumbnail,
      @JsonKey(name: 'videoAuthor') String videoAuthor,
      @JsonKey(name: 'videoDuration') double videoDuration,
      @JsonKey(name: 'videoUrl') String videoUrl,
      @JsonKey(name: 'videoSize') String videoSize,
      @JsonKey(name: 'videoProvider') String videoProvider,
      @JsonKey(name: 'videoId') String videoId,
      @JsonKey(name: 'embedUrl') String embedUrl,
      @JsonKey(name: 'previewType') String previewType,
      @JsonKey(name: 'views') int views,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'isPublished') bool isPublished,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'educationId') String educationId,
      @JsonKey(name: 'created') String created,
      @JsonKey(name: 'lastModified') String lastModified,
      @JsonKey(name: '__v') int version,
      @JsonKey(name: 'durationText') String durationText,
      @JsonKey(name: 'createdText') String createdText});
}

/// @nodoc
class _$EducationItemCopyWithImpl<$Res, $Val extends EducationItem>
    implements $EducationItemCopyWith<$Res> {
  _$EducationItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? documentTitle = null,
    Object? documentPages = null,
    Object? documentSize = null,
    Object? documentFile = null,
    Object? videoTitle = null,
    Object? videoThumbnail = null,
    Object? videoAuthor = null,
    Object? videoDuration = null,
    Object? videoUrl = null,
    Object? videoSize = null,
    Object? videoProvider = null,
    Object? videoId = null,
    Object? embedUrl = null,
    Object? previewType = null,
    Object? views = null,
    Object? isActive = null,
    Object? isPublished = null,
    Object? id = null,
    Object? educationId = null,
    Object? created = null,
    Object? lastModified = null,
    Object? version = null,
    Object? durationText = null,
    Object? createdText = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documentTitle: null == documentTitle
          ? _value.documentTitle
          : documentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      documentPages: null == documentPages
          ? _value.documentPages
          : documentPages // ignore: cast_nullable_to_non_nullable
              as int,
      documentSize: null == documentSize
          ? _value.documentSize
          : documentSize // ignore: cast_nullable_to_non_nullable
              as String,
      documentFile: null == documentFile
          ? _value.documentFile
          : documentFile // ignore: cast_nullable_to_non_nullable
              as String,
      videoTitle: null == videoTitle
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoThumbnail: null == videoThumbnail
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      videoAuthor: null == videoAuthor
          ? _value.videoAuthor
          : videoAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      videoDuration: null == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as double,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoSize: null == videoSize
          ? _value.videoSize
          : videoSize // ignore: cast_nullable_to_non_nullable
              as String,
      videoProvider: null == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      embedUrl: null == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      previewType: null == previewType
          ? _value.previewType
          : previewType // ignore: cast_nullable_to_non_nullable
              as String,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      educationId: null == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      durationText: null == durationText
          ? _value.durationText
          : durationText // ignore: cast_nullable_to_non_nullable
              as String,
      createdText: null == createdText
          ? _value.createdText
          : createdText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationItemImplCopyWith<$Res>
    implements $EducationItemCopyWith<$Res> {
  factory _$$EducationItemImplCopyWith(
          _$EducationItemImpl value, $Res Function(_$EducationItemImpl) then) =
      __$$EducationItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'documentTitle') String documentTitle,
      @JsonKey(name: 'documentPages') int documentPages,
      @JsonKey(name: 'documentSize') String documentSize,
      @JsonKey(name: 'documentFile') String documentFile,
      @JsonKey(name: 'videoTitle') String videoTitle,
      @JsonKey(name: 'videoThumbnail') String videoThumbnail,
      @JsonKey(name: 'videoAuthor') String videoAuthor,
      @JsonKey(name: 'videoDuration') double videoDuration,
      @JsonKey(name: 'videoUrl') String videoUrl,
      @JsonKey(name: 'videoSize') String videoSize,
      @JsonKey(name: 'videoProvider') String videoProvider,
      @JsonKey(name: 'videoId') String videoId,
      @JsonKey(name: 'embedUrl') String embedUrl,
      @JsonKey(name: 'previewType') String previewType,
      @JsonKey(name: 'views') int views,
      @JsonKey(name: 'isActive') bool isActive,
      @JsonKey(name: 'isPublished') bool isPublished,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'educationId') String educationId,
      @JsonKey(name: 'created') String created,
      @JsonKey(name: 'lastModified') String lastModified,
      @JsonKey(name: '__v') int version,
      @JsonKey(name: 'durationText') String durationText,
      @JsonKey(name: 'createdText') String createdText});
}

/// @nodoc
class __$$EducationItemImplCopyWithImpl<$Res>
    extends _$EducationItemCopyWithImpl<$Res, _$EducationItemImpl>
    implements _$$EducationItemImplCopyWith<$Res> {
  __$$EducationItemImplCopyWithImpl(
      _$EducationItemImpl _value, $Res Function(_$EducationItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? documentTitle = null,
    Object? documentPages = null,
    Object? documentSize = null,
    Object? documentFile = null,
    Object? videoTitle = null,
    Object? videoThumbnail = null,
    Object? videoAuthor = null,
    Object? videoDuration = null,
    Object? videoUrl = null,
    Object? videoSize = null,
    Object? videoProvider = null,
    Object? videoId = null,
    Object? embedUrl = null,
    Object? previewType = null,
    Object? views = null,
    Object? isActive = null,
    Object? isPublished = null,
    Object? id = null,
    Object? educationId = null,
    Object? created = null,
    Object? lastModified = null,
    Object? version = null,
    Object? durationText = null,
    Object? createdText = null,
  }) {
    return _then(_$EducationItemImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      documentTitle: null == documentTitle
          ? _value.documentTitle
          : documentTitle // ignore: cast_nullable_to_non_nullable
              as String,
      documentPages: null == documentPages
          ? _value.documentPages
          : documentPages // ignore: cast_nullable_to_non_nullable
              as int,
      documentSize: null == documentSize
          ? _value.documentSize
          : documentSize // ignore: cast_nullable_to_non_nullable
              as String,
      documentFile: null == documentFile
          ? _value.documentFile
          : documentFile // ignore: cast_nullable_to_non_nullable
              as String,
      videoTitle: null == videoTitle
          ? _value.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoThumbnail: null == videoThumbnail
          ? _value.videoThumbnail
          : videoThumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      videoAuthor: null == videoAuthor
          ? _value.videoAuthor
          : videoAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      videoDuration: null == videoDuration
          ? _value.videoDuration
          : videoDuration // ignore: cast_nullable_to_non_nullable
              as double,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      videoSize: null == videoSize
          ? _value.videoSize
          : videoSize // ignore: cast_nullable_to_non_nullable
              as String,
      videoProvider: null == videoProvider
          ? _value.videoProvider
          : videoProvider // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      embedUrl: null == embedUrl
          ? _value.embedUrl
          : embedUrl // ignore: cast_nullable_to_non_nullable
              as String,
      previewType: null == previewType
          ? _value.previewType
          : previewType // ignore: cast_nullable_to_non_nullable
              as String,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublished: null == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      educationId: null == educationId
          ? _value.educationId
          : educationId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      durationText: null == durationText
          ? _value.durationText
          : durationText // ignore: cast_nullable_to_non_nullable
              as String,
      createdText: null == createdText
          ? _value.createdText
          : createdText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EducationItemImpl implements _EducationItem {
  const _$EducationItemImpl(
      {@JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'documentTitle') this.documentTitle = '',
      @JsonKey(name: 'documentPages') this.documentPages = 0,
      @JsonKey(name: 'documentSize') this.documentSize = '',
      @JsonKey(name: 'documentFile') this.documentFile = '',
      @JsonKey(name: 'videoTitle') this.videoTitle = '',
      @JsonKey(name: 'videoThumbnail') this.videoThumbnail = '',
      @JsonKey(name: 'videoAuthor') this.videoAuthor = '',
      @JsonKey(name: 'videoDuration') this.videoDuration = 0.0,
      @JsonKey(name: 'videoUrl') this.videoUrl = '',
      @JsonKey(name: 'videoSize') this.videoSize = '',
      @JsonKey(name: 'videoProvider') this.videoProvider = '',
      @JsonKey(name: 'videoId') this.videoId = '',
      @JsonKey(name: 'embedUrl') this.embedUrl = '',
      @JsonKey(name: 'previewType') this.previewType = '',
      @JsonKey(name: 'views') this.views = 0,
      @JsonKey(name: 'isActive') this.isActive = false,
      @JsonKey(name: 'isPublished') this.isPublished = false,
      @JsonKey(name: '_id') this.id = '',
      @JsonKey(name: 'educationId') this.educationId = '',
      @JsonKey(name: 'created') this.created = '',
      @JsonKey(name: 'lastModified') this.lastModified = '',
      @JsonKey(name: '__v') this.version = 0,
      @JsonKey(name: 'durationText') this.durationText = '',
      @JsonKey(name: 'createdText') this.createdText = ''});

  factory _$EducationItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationItemImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'documentTitle')
  final String documentTitle;
  @override
  @JsonKey(name: 'documentPages')
  final int documentPages;
  @override
  @JsonKey(name: 'documentSize')
  final String documentSize;
  @override
  @JsonKey(name: 'documentFile')
  final String documentFile;
  @override
  @JsonKey(name: 'videoTitle')
  final String videoTitle;
  @override
  @JsonKey(name: 'videoThumbnail')
  final String videoThumbnail;
  @override
  @JsonKey(name: 'videoAuthor')
  final String videoAuthor;
  @override
  @JsonKey(name: 'videoDuration')
  final double videoDuration;
  @override
  @JsonKey(name: 'videoUrl')
  final String videoUrl;
  @override
  @JsonKey(name: 'videoSize')
  final String videoSize;
// Sent for every education video. "direct" plays in the app's own
// player; "youtube" has to go through an embed, since a YouTube page is
// not a media file. Older rows carry neither, so the URL is sniffed too.
  @override
  @JsonKey(name: 'videoProvider')
  final String videoProvider;
  @override
  @JsonKey(name: 'videoId')
  final String videoId;
  @override
  @JsonKey(name: 'embedUrl')
  final String embedUrl;
  @override
  @JsonKey(name: 'previewType')
  final String previewType;
  @override
  @JsonKey(name: 'views')
  final int views;
  @override
  @JsonKey(name: 'isActive')
  final bool isActive;
  @override
  @JsonKey(name: 'isPublished')
  final bool isPublished;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'educationId')
  final String educationId;
  @override
  @JsonKey(name: 'created')
  final String created;
  @override
  @JsonKey(name: 'lastModified')
  final String lastModified;
  @override
  @JsonKey(name: '__v')
  final int version;
  @override
  @JsonKey(name: 'durationText')
  final String durationText;
  @override
  @JsonKey(name: 'createdText')
  final String createdText;

  @override
  String toString() {
    return 'EducationItem(type: $type, documentTitle: $documentTitle, documentPages: $documentPages, documentSize: $documentSize, documentFile: $documentFile, videoTitle: $videoTitle, videoThumbnail: $videoThumbnail, videoAuthor: $videoAuthor, videoDuration: $videoDuration, videoUrl: $videoUrl, videoSize: $videoSize, videoProvider: $videoProvider, videoId: $videoId, embedUrl: $embedUrl, previewType: $previewType, views: $views, isActive: $isActive, isPublished: $isPublished, id: $id, educationId: $educationId, created: $created, lastModified: $lastModified, version: $version, durationText: $durationText, createdText: $createdText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationItemImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.documentTitle, documentTitle) ||
                other.documentTitle == documentTitle) &&
            (identical(other.documentPages, documentPages) ||
                other.documentPages == documentPages) &&
            (identical(other.documentSize, documentSize) ||
                other.documentSize == documentSize) &&
            (identical(other.documentFile, documentFile) ||
                other.documentFile == documentFile) &&
            (identical(other.videoTitle, videoTitle) ||
                other.videoTitle == videoTitle) &&
            (identical(other.videoThumbnail, videoThumbnail) ||
                other.videoThumbnail == videoThumbnail) &&
            (identical(other.videoAuthor, videoAuthor) ||
                other.videoAuthor == videoAuthor) &&
            (identical(other.videoDuration, videoDuration) ||
                other.videoDuration == videoDuration) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.videoSize, videoSize) ||
                other.videoSize == videoSize) &&
            (identical(other.videoProvider, videoProvider) ||
                other.videoProvider == videoProvider) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.embedUrl, embedUrl) ||
                other.embedUrl == embedUrl) &&
            (identical(other.previewType, previewType) ||
                other.previewType == previewType) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.educationId, educationId) ||
                other.educationId == educationId) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.durationText, durationText) ||
                other.durationText == durationText) &&
            (identical(other.createdText, createdText) ||
                other.createdText == createdText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        type,
        documentTitle,
        documentPages,
        documentSize,
        documentFile,
        videoTitle,
        videoThumbnail,
        videoAuthor,
        videoDuration,
        videoUrl,
        videoSize,
        videoProvider,
        videoId,
        embedUrl,
        previewType,
        views,
        isActive,
        isPublished,
        id,
        educationId,
        created,
        lastModified,
        version,
        durationText,
        createdText
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationItemImplCopyWith<_$EducationItemImpl> get copyWith =>
      __$$EducationItemImplCopyWithImpl<_$EducationItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationItemImplToJson(
      this,
    );
  }
}

abstract class _EducationItem implements EducationItem {
  const factory _EducationItem(
          {@JsonKey(name: 'type') final String type,
          @JsonKey(name: 'documentTitle') final String documentTitle,
          @JsonKey(name: 'documentPages') final int documentPages,
          @JsonKey(name: 'documentSize') final String documentSize,
          @JsonKey(name: 'documentFile') final String documentFile,
          @JsonKey(name: 'videoTitle') final String videoTitle,
          @JsonKey(name: 'videoThumbnail') final String videoThumbnail,
          @JsonKey(name: 'videoAuthor') final String videoAuthor,
          @JsonKey(name: 'videoDuration') final double videoDuration,
          @JsonKey(name: 'videoUrl') final String videoUrl,
          @JsonKey(name: 'videoSize') final String videoSize,
          @JsonKey(name: 'videoProvider') final String videoProvider,
          @JsonKey(name: 'videoId') final String videoId,
          @JsonKey(name: 'embedUrl') final String embedUrl,
          @JsonKey(name: 'previewType') final String previewType,
          @JsonKey(name: 'views') final int views,
          @JsonKey(name: 'isActive') final bool isActive,
          @JsonKey(name: 'isPublished') final bool isPublished,
          @JsonKey(name: '_id') final String id,
          @JsonKey(name: 'educationId') final String educationId,
          @JsonKey(name: 'created') final String created,
          @JsonKey(name: 'lastModified') final String lastModified,
          @JsonKey(name: '__v') final int version,
          @JsonKey(name: 'durationText') final String durationText,
          @JsonKey(name: 'createdText') final String createdText}) =
      _$EducationItemImpl;

  factory _EducationItem.fromJson(Map<String, dynamic> json) =
      _$EducationItemImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'documentTitle')
  String get documentTitle;
  @override
  @JsonKey(name: 'documentPages')
  int get documentPages;
  @override
  @JsonKey(name: 'documentSize')
  String get documentSize;
  @override
  @JsonKey(name: 'documentFile')
  String get documentFile;
  @override
  @JsonKey(name: 'videoTitle')
  String get videoTitle;
  @override
  @JsonKey(name: 'videoThumbnail')
  String get videoThumbnail;
  @override
  @JsonKey(name: 'videoAuthor')
  String get videoAuthor;
  @override
  @JsonKey(name: 'videoDuration')
  double get videoDuration;
  @override
  @JsonKey(name: 'videoUrl')
  String get videoUrl;
  @override
  @JsonKey(name: 'videoSize')
  String get videoSize;
  @override // Sent for every education video. "direct" plays in the app's own
// player; "youtube" has to go through an embed, since a YouTube page is
// not a media file. Older rows carry neither, so the URL is sniffed too.
  @JsonKey(name: 'videoProvider')
  String get videoProvider;
  @override
  @JsonKey(name: 'videoId')
  String get videoId;
  @override
  @JsonKey(name: 'embedUrl')
  String get embedUrl;
  @override
  @JsonKey(name: 'previewType')
  String get previewType;
  @override
  @JsonKey(name: 'views')
  int get views;
  @override
  @JsonKey(name: 'isActive')
  bool get isActive;
  @override
  @JsonKey(name: 'isPublished')
  bool get isPublished;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'educationId')
  String get educationId;
  @override
  @JsonKey(name: 'created')
  String get created;
  @override
  @JsonKey(name: 'lastModified')
  String get lastModified;
  @override
  @JsonKey(name: '__v')
  int get version;
  @override
  @JsonKey(name: 'durationText')
  String get durationText;
  @override
  @JsonKey(name: 'createdText')
  String get createdText;
  @override
  @JsonKey(ignore: true)
  _$$EducationItemImplCopyWith<_$EducationItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageBody {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRead')
  bool get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'extraParams')
  Map<String, dynamic> get extraParams => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationReportId')
  String get notificationReportId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificationId')
  String get notificationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  String get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastModified')
  String get lastModified => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdDate')
  String get createdDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageBodyCopyWith<MessageBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBodyCopyWith<$Res> {
  factory $MessageBodyCopyWith(
          MessageBody value, $Res Function(MessageBody) then) =
      _$MessageBodyCopyWithImpl<$Res, MessageBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'isRead') bool isRead,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'extraParams') Map<String, dynamic> extraParams,
      @JsonKey(name: 'notificationReportId') String notificationReportId,
      @JsonKey(name: 'notificationId') String notificationId,
      @JsonKey(name: 'created') String created,
      @JsonKey(name: 'lastModified') String lastModified,
      @JsonKey(name: 'summary') String summary,
      @JsonKey(name: 'createdDate') String createdDate});
}

/// @nodoc
class _$MessageBodyCopyWithImpl<$Res, $Val extends MessageBody>
    implements $MessageBodyCopyWith<$Res> {
  _$MessageBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isRead = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
    Object? extraParams = null,
    Object? notificationReportId = null,
    Object? notificationId = null,
    Object? created = null,
    Object? lastModified = null,
    Object? summary = null,
    Object? createdDate = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      extraParams: null == extraParams
          ? _value.extraParams
          : extraParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      notificationReportId: null == notificationReportId
          ? _value.notificationReportId
          : notificationReportId // ignore: cast_nullable_to_non_nullable
              as String,
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageBodyImplCopyWith<$Res>
    implements $MessageBodyCopyWith<$Res> {
  factory _$$MessageBodyImplCopyWith(
          _$MessageBodyImpl value, $Res Function(_$MessageBodyImpl) then) =
      __$$MessageBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'isRead') bool isRead,
      @JsonKey(name: 'userId') String userId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'body') String body,
      @JsonKey(name: 'extraParams') Map<String, dynamic> extraParams,
      @JsonKey(name: 'notificationReportId') String notificationReportId,
      @JsonKey(name: 'notificationId') String notificationId,
      @JsonKey(name: 'created') String created,
      @JsonKey(name: 'lastModified') String lastModified,
      @JsonKey(name: 'summary') String summary,
      @JsonKey(name: 'createdDate') String createdDate});
}

/// @nodoc
class __$$MessageBodyImplCopyWithImpl<$Res>
    extends _$MessageBodyCopyWithImpl<$Res, _$MessageBodyImpl>
    implements _$$MessageBodyImplCopyWith<$Res> {
  __$$MessageBodyImplCopyWithImpl(
      _$MessageBodyImpl _value, $Res Function(_$MessageBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isRead = null,
    Object? userId = null,
    Object? title = null,
    Object? body = null,
    Object? extraParams = null,
    Object? notificationReportId = null,
    Object? notificationId = null,
    Object? created = null,
    Object? lastModified = null,
    Object? summary = null,
    Object? createdDate = null,
  }) {
    return _then(_$MessageBodyImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      extraParams: null == extraParams
          ? _value._extraParams
          : extraParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      notificationReportId: null == notificationReportId
          ? _value.notificationReportId
          : notificationReportId // ignore: cast_nullable_to_non_nullable
              as String,
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _value.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageBodyImpl implements _MessageBody {
  const _$MessageBodyImpl(
      {@JsonKey(name: 'type') this.type = '',
      @JsonKey(name: 'isRead') this.isRead = false,
      @JsonKey(name: 'userId') this.userId = '',
      @JsonKey(name: 'title') this.title = '',
      @JsonKey(name: 'body') this.body = '',
      @JsonKey(name: 'extraParams')
      final Map<String, dynamic> extraParams = const {},
      @JsonKey(name: 'notificationReportId') this.notificationReportId = '',
      @JsonKey(name: 'notificationId') this.notificationId = '',
      @JsonKey(name: 'created') this.created = '',
      @JsonKey(name: 'lastModified') this.lastModified = '',
      @JsonKey(name: 'summary') this.summary = '',
      @JsonKey(name: 'createdDate') this.createdDate = ''})
      : _extraParams = extraParams;

  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'isRead')
  final bool isRead;
  @override
  @JsonKey(name: 'userId')
  final String userId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'body')
  final String body;
  final Map<String, dynamic> _extraParams;
  @override
  @JsonKey(name: 'extraParams')
  Map<String, dynamic> get extraParams {
    if (_extraParams is EqualUnmodifiableMapView) return _extraParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extraParams);
  }

  @override
  @JsonKey(name: 'notificationReportId')
  final String notificationReportId;
  @override
  @JsonKey(name: 'notificationId')
  final String notificationId;
  @override
  @JsonKey(name: 'created')
  final String created;
  @override
  @JsonKey(name: 'lastModified')
  final String lastModified;
  @override
  @JsonKey(name: 'summary')
  final String summary;
  @override
  @JsonKey(name: 'createdDate')
  final String createdDate;

  @override
  String toString() {
    return 'MessageBody(type: $type, isRead: $isRead, userId: $userId, title: $title, body: $body, extraParams: $extraParams, notificationReportId: $notificationReportId, notificationId: $notificationId, created: $created, lastModified: $lastModified, summary: $summary, createdDate: $createdDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageBodyImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality()
                .equals(other._extraParams, _extraParams) &&
            (identical(other.notificationReportId, notificationReportId) ||
                other.notificationReportId == notificationReportId) &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      isRead,
      userId,
      title,
      body,
      const DeepCollectionEquality().hash(_extraParams),
      notificationReportId,
      notificationId,
      created,
      lastModified,
      summary,
      createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageBodyImplCopyWith<_$MessageBodyImpl> get copyWith =>
      __$$MessageBodyImplCopyWithImpl<_$MessageBodyImpl>(this, _$identity);
}

abstract class _MessageBody implements MessageBody {
  const factory _MessageBody(
      {@JsonKey(name: 'type') final String type,
      @JsonKey(name: 'isRead') final bool isRead,
      @JsonKey(name: 'userId') final String userId,
      @JsonKey(name: 'title') final String title,
      @JsonKey(name: 'body') final String body,
      @JsonKey(name: 'extraParams') final Map<String, dynamic> extraParams,
      @JsonKey(name: 'notificationReportId') final String notificationReportId,
      @JsonKey(name: 'notificationId') final String notificationId,
      @JsonKey(name: 'created') final String created,
      @JsonKey(name: 'lastModified') final String lastModified,
      @JsonKey(name: 'summary') final String summary,
      @JsonKey(name: 'createdDate')
      final String createdDate}) = _$MessageBodyImpl;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'isRead')
  bool get isRead;
  @override
  @JsonKey(name: 'userId')
  String get userId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'body')
  String get body;
  @override
  @JsonKey(name: 'extraParams')
  Map<String, dynamic> get extraParams;
  @override
  @JsonKey(name: 'notificationReportId')
  String get notificationReportId;
  @override
  @JsonKey(name: 'notificationId')
  String get notificationId;
  @override
  @JsonKey(name: 'created')
  String get created;
  @override
  @JsonKey(name: 'lastModified')
  String get lastModified;
  @override
  @JsonKey(name: 'summary')
  String get summary;
  @override
  @JsonKey(name: 'createdDate')
  String get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$MessageBodyImplCopyWith<_$MessageBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

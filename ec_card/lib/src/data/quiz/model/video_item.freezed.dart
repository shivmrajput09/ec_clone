// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VideoItem {
  @JsonKey(name: 'videoPath')
  String get videoPath;
  @JsonKey(name: 'videoTitle')
  String get videoTitle;
  @JsonKey(name: 'videoDescription')
  String get videoDescription;
  @JsonKey(name: 'isPublished')
  bool get isPublished;
  @JsonKey(name: 'isActivated')
  bool get isActivated;
  @JsonKey(name: 'videoId')
  String get videoId;
  @JsonKey(name: 'created')
  String get created;
  @JsonKey(name: 'lastModified')
  String get lastModified;
  @JsonKey(name: 'watched')
  bool get watched;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VideoItemCopyWith<VideoItem> get copyWith =>
      _$VideoItemCopyWithImpl<VideoItem>(this as VideoItem, _$identity);

  /// Serializes this VideoItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as VideoItem;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VideoItem &&
            (identical(other.videoPath, _this.videoPath) ||
                other.videoPath == _this.videoPath) &&
            (identical(other.videoTitle, _this.videoTitle) ||
                other.videoTitle == _this.videoTitle) &&
            (identical(other.videoDescription, _this.videoDescription) ||
                other.videoDescription == _this.videoDescription) &&
            (identical(other.isPublished, _this.isPublished) ||
                other.isPublished == _this.isPublished) &&
            (identical(other.isActivated, _this.isActivated) ||
                other.isActivated == _this.isActivated) &&
            (identical(other.videoId, _this.videoId) ||
                other.videoId == _this.videoId) &&
            (identical(other.created, _this.created) ||
                other.created == _this.created) &&
            (identical(other.lastModified, _this.lastModified) ||
                other.lastModified == _this.lastModified) &&
            (identical(other.watched, _this.watched) ||
                other.watched == _this.watched));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as VideoItem;
    return Object.hash(
        runtimeType,
        _this.videoPath,
        _this.videoTitle,
        _this.videoDescription,
        _this.isPublished,
        _this.isActivated,
        _this.videoId,
        _this.created,
        _this.lastModified,
        _this.watched);
  }

  @override
  String toString() {
    final _this = this as VideoItem;
    return 'VideoItem(videoPath: ${_this.videoPath}, videoTitle: ${_this.videoTitle}, videoDescription: ${_this.videoDescription}, isPublished: ${_this.isPublished}, isActivated: ${_this.isActivated}, videoId: ${_this.videoId}, created: ${_this.created}, lastModified: ${_this.lastModified}, watched: ${_this.watched})';
  }
}

/// @nodoc
abstract mixin class $VideoItemCopyWith<$Res> {
  factory $VideoItemCopyWith(VideoItem value, $Res Function(VideoItem) _then) =
      _$VideoItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'videoPath') String videoPath,
      @JsonKey(name: 'videoTitle') String videoTitle,
      @JsonKey(name: 'videoDescription') String videoDescription,
      @JsonKey(name: 'isPublished') bool isPublished,
      @JsonKey(name: 'isActivated') bool isActivated,
      @JsonKey(name: 'videoId') String videoId,
      @JsonKey(name: 'created') String created,
      @JsonKey(name: 'lastModified') String lastModified,
      @JsonKey(name: 'watched') bool watched});
}

/// @nodoc
class _$VideoItemCopyWithImpl<$Res> implements $VideoItemCopyWith<$Res> {
  _$VideoItemCopyWithImpl(this._self, this._then);

  final VideoItem _self;
  final $Res Function(VideoItem) _then;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoPath = null,
    Object? videoTitle = null,
    Object? videoDescription = null,
    Object? isPublished = null,
    Object? isActivated = null,
    Object? videoId = null,
    Object? created = null,
    Object? lastModified = null,
    Object? watched = null,
  }) {
    return _then(VideoItem(
      videoPath: null == videoPath
          ? _self.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      videoTitle: null == videoTitle
          ? _self.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoDescription: null == videoDescription
          ? _self.videoDescription
          : videoDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: null == isPublished
          ? _self.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _self.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      videoId: null == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _self.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
      watched: null == watched
          ? _self.watched
          : watched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [VideoItem].
extension VideoItemPatterns on VideoItem {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VideoItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoItem() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VideoItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoItem():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VideoItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoItem() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'videoPath') String videoPath,
            @JsonKey(name: 'videoTitle') String videoTitle,
            @JsonKey(name: 'videoDescription') String videoDescription,
            @JsonKey(name: 'isPublished') bool isPublished,
            @JsonKey(name: 'isActivated') bool isActivated,
            @JsonKey(name: 'videoId') String videoId,
            @JsonKey(name: 'created') String created,
            @JsonKey(name: 'lastModified') String lastModified,
            @JsonKey(name: 'watched') bool watched)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VideoItem() when $default != null:
        return $default(
            _that.videoPath,
            _that.videoTitle,
            _that.videoDescription,
            _that.isPublished,
            _that.isActivated,
            _that.videoId,
            _that.created,
            _that.lastModified,
            _that.watched);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'videoPath') String videoPath,
            @JsonKey(name: 'videoTitle') String videoTitle,
            @JsonKey(name: 'videoDescription') String videoDescription,
            @JsonKey(name: 'isPublished') bool isPublished,
            @JsonKey(name: 'isActivated') bool isActivated,
            @JsonKey(name: 'videoId') String videoId,
            @JsonKey(name: 'created') String created,
            @JsonKey(name: 'lastModified') String lastModified,
            @JsonKey(name: 'watched') bool watched)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoItem():
        return $default(
            _that.videoPath,
            _that.videoTitle,
            _that.videoDescription,
            _that.isPublished,
            _that.isActivated,
            _that.videoId,
            _that.created,
            _that.lastModified,
            _that.watched);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'videoPath') String videoPath,
            @JsonKey(name: 'videoTitle') String videoTitle,
            @JsonKey(name: 'videoDescription') String videoDescription,
            @JsonKey(name: 'isPublished') bool isPublished,
            @JsonKey(name: 'isActivated') bool isActivated,
            @JsonKey(name: 'videoId') String videoId,
            @JsonKey(name: 'created') String created,
            @JsonKey(name: 'lastModified') String lastModified,
            @JsonKey(name: 'watched') bool watched)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VideoItem() when $default != null:
        return $default(
            _that.videoPath,
            _that.videoTitle,
            _that.videoDescription,
            _that.isPublished,
            _that.isActivated,
            _that.videoId,
            _that.created,
            _that.lastModified,
            _that.watched);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _VideoItem implements VideoItem {
  const _VideoItem(
      {@JsonKey(name: 'videoPath') this.videoPath = '',
      @JsonKey(name: 'videoTitle') this.videoTitle = '',
      @JsonKey(name: 'videoDescription') this.videoDescription = '',
      @JsonKey(name: 'isPublished') this.isPublished = false,
      @JsonKey(name: 'isActivated') this.isActivated = false,
      @JsonKey(name: 'videoId') this.videoId = '',
      @JsonKey(name: 'created') this.created = '',
      @JsonKey(name: 'lastModified') this.lastModified = '',
      @JsonKey(name: 'watched') this.watched = false});
  factory _VideoItem.fromJson(Map<String, dynamic> json) =>
      _$VideoItemFromJson(json);

  @override
  @JsonKey(name: 'videoPath')
  final String videoPath;
  @override
  @JsonKey(name: 'videoTitle')
  final String videoTitle;
  @override
  @JsonKey(name: 'videoDescription')
  final String videoDescription;
  @override
  @JsonKey(name: 'isPublished')
  final bool isPublished;
  @override
  @JsonKey(name: 'isActivated')
  final bool isActivated;
  @override
  @JsonKey(name: 'videoId')
  final String videoId;
  @override
  @JsonKey(name: 'created')
  final String created;
  @override
  @JsonKey(name: 'lastModified')
  final String lastModified;
  @override
  @JsonKey(name: 'watched')
  final bool watched;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VideoItemCopyWith<_VideoItem> get copyWith =>
      __$VideoItemCopyWithImpl<_VideoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VideoItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VideoItem &&
            (identical(other.videoPath, videoPath) ||
                other.videoPath == videoPath) &&
            (identical(other.videoTitle, videoTitle) ||
                other.videoTitle == videoTitle) &&
            (identical(other.videoDescription, videoDescription) ||
                other.videoDescription == videoDescription) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified) &&
            (identical(other.watched, watched) || other.watched == watched));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, videoPath, videoTitle, videoDescription,
        isPublished, isActivated, videoId, created, lastModified, watched);
  }

  @override
  String toString() {
    return 'VideoItem(videoPath: $videoPath, videoTitle: $videoTitle, videoDescription: $videoDescription, isPublished: $isPublished, isActivated: $isActivated, videoId: $videoId, created: $created, lastModified: $lastModified, watched: $watched)';
  }
}

/// @nodoc
abstract mixin class _$VideoItemCopyWith<$Res>
    implements $VideoItemCopyWith<$Res> {
  factory _$VideoItemCopyWith(
          _VideoItem value, $Res Function(_VideoItem) _then) =
      __$VideoItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'videoPath') String videoPath,
      @JsonKey(name: 'videoTitle') String videoTitle,
      @JsonKey(name: 'videoDescription') String videoDescription,
      @JsonKey(name: 'isPublished') bool isPublished,
      @JsonKey(name: 'isActivated') bool isActivated,
      @JsonKey(name: 'videoId') String videoId,
      @JsonKey(name: 'created') String created,
      @JsonKey(name: 'lastModified') String lastModified,
      @JsonKey(name: 'watched') bool watched});
}

/// @nodoc
class __$VideoItemCopyWithImpl<$Res> implements _$VideoItemCopyWith<$Res> {
  __$VideoItemCopyWithImpl(this._self, this._then);

  final _VideoItem _self;
  final $Res Function(_VideoItem) _then;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? videoPath = null,
    Object? videoTitle = null,
    Object? videoDescription = null,
    Object? isPublished = null,
    Object? isActivated = null,
    Object? videoId = null,
    Object? created = null,
    Object? lastModified = null,
    Object? watched = null,
  }) {
    return _then(_VideoItem(
      videoPath: null == videoPath
          ? _self.videoPath
          : videoPath // ignore: cast_nullable_to_non_nullable
              as String,
      videoTitle: null == videoTitle
          ? _self.videoTitle
          : videoTitle // ignore: cast_nullable_to_non_nullable
              as String,
      videoDescription: null == videoDescription
          ? _self.videoDescription
          : videoDescription // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: null == isPublished
          ? _self.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _self.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      videoId: null == videoId
          ? _self.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _self.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
      watched: null == watched
          ? _self.watched
          : watched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'education_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EducationState {
  bool get isDocumentListLoading => throw _privateConstructorUsedError;
  bool get isVideoListLoading => throw _privateConstructorUsedError;
  List<EducationItem> get documentsList => throw _privateConstructorUsedError;
  List<EducationItem> get videoList => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  String get videoQuery => throw _privateConstructorUsedError;
  List<EducationItem> get filteredDocumentList =>
      throw _privateConstructorUsedError;
  List<EducationItem> get filteredVideoList =>
      throw _privateConstructorUsedError;
  bool get isDocumentSearchLoading => throw _privateConstructorUsedError;
  bool get isVideoSearchLoading => throw _privateConstructorUsedError;
  bool get isWeblinkListLoading => throw _privateConstructorUsedError;
  List<WeblinkItem> get weblinkList => throw _privateConstructorUsedError;
  String get weblinkQuery => throw _privateConstructorUsedError;

  /// Tells an empty list after a failed call apart from one the
  /// organisation simply has not filled yet.
  bool get hasWeblinkListFailed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EducationStateCopyWith<EducationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationStateCopyWith<$Res> {
  factory $EducationStateCopyWith(
          EducationState value, $Res Function(EducationState) then) =
      _$EducationStateCopyWithImpl<$Res, EducationState>;
  @useResult
  $Res call(
      {bool isDocumentListLoading,
      bool isVideoListLoading,
      List<EducationItem> documentsList,
      List<EducationItem> videoList,
      String query,
      String videoQuery,
      List<EducationItem> filteredDocumentList,
      List<EducationItem> filteredVideoList,
      bool isDocumentSearchLoading,
      bool isVideoSearchLoading,
      bool isWeblinkListLoading,
      List<WeblinkItem> weblinkList,
      String weblinkQuery,
      bool hasWeblinkListFailed});
}

/// @nodoc
class _$EducationStateCopyWithImpl<$Res, $Val extends EducationState>
    implements $EducationStateCopyWith<$Res> {
  _$EducationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDocumentListLoading = null,
    Object? isVideoListLoading = null,
    Object? documentsList = null,
    Object? videoList = null,
    Object? query = null,
    Object? videoQuery = null,
    Object? filteredDocumentList = null,
    Object? filteredVideoList = null,
    Object? isDocumentSearchLoading = null,
    Object? isVideoSearchLoading = null,
    Object? isWeblinkListLoading = null,
    Object? weblinkList = null,
    Object? weblinkQuery = null,
    Object? hasWeblinkListFailed = null,
  }) {
    return _then(_value.copyWith(
      isDocumentListLoading: null == isDocumentListLoading
          ? _value.isDocumentListLoading
          : isDocumentListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoListLoading: null == isVideoListLoading
          ? _value.isVideoListLoading
          : isVideoListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      documentsList: null == documentsList
          ? _value.documentsList
          : documentsList // ignore: cast_nullable_to_non_nullable
              as List<EducationItem>,
      videoList: null == videoList
          ? _value.videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<EducationItem>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      videoQuery: null == videoQuery
          ? _value.videoQuery
          : videoQuery // ignore: cast_nullable_to_non_nullable
              as String,
      filteredDocumentList: null == filteredDocumentList
          ? _value.filteredDocumentList
          : filteredDocumentList // ignore: cast_nullable_to_non_nullable
              as List<EducationItem>,
      filteredVideoList: null == filteredVideoList
          ? _value.filteredVideoList
          : filteredVideoList // ignore: cast_nullable_to_non_nullable
              as List<EducationItem>,
      isDocumentSearchLoading: null == isDocumentSearchLoading
          ? _value.isDocumentSearchLoading
          : isDocumentSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoSearchLoading: null == isVideoSearchLoading
          ? _value.isVideoSearchLoading
          : isVideoSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isWeblinkListLoading: null == isWeblinkListLoading
          ? _value.isWeblinkListLoading
          : isWeblinkListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weblinkList: null == weblinkList
          ? _value.weblinkList
          : weblinkList // ignore: cast_nullable_to_non_nullable
              as List<WeblinkItem>,
      weblinkQuery: null == weblinkQuery
          ? _value.weblinkQuery
          : weblinkQuery // ignore: cast_nullable_to_non_nullable
              as String,
      hasWeblinkListFailed: null == hasWeblinkListFailed
          ? _value.hasWeblinkListFailed
          : hasWeblinkListFailed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EducationStateImplCopyWith<$Res>
    implements $EducationStateCopyWith<$Res> {
  factory _$$EducationStateImplCopyWith(_$EducationStateImpl value,
          $Res Function(_$EducationStateImpl) then) =
      __$$EducationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDocumentListLoading,
      bool isVideoListLoading,
      List<EducationItem> documentsList,
      List<EducationItem> videoList,
      String query,
      String videoQuery,
      List<EducationItem> filteredDocumentList,
      List<EducationItem> filteredVideoList,
      bool isDocumentSearchLoading,
      bool isVideoSearchLoading,
      bool isWeblinkListLoading,
      List<WeblinkItem> weblinkList,
      String weblinkQuery,
      bool hasWeblinkListFailed});
}

/// @nodoc
class __$$EducationStateImplCopyWithImpl<$Res>
    extends _$EducationStateCopyWithImpl<$Res, _$EducationStateImpl>
    implements _$$EducationStateImplCopyWith<$Res> {
  __$$EducationStateImplCopyWithImpl(
      _$EducationStateImpl _value, $Res Function(_$EducationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDocumentListLoading = null,
    Object? isVideoListLoading = null,
    Object? documentsList = null,
    Object? videoList = null,
    Object? query = null,
    Object? videoQuery = null,
    Object? filteredDocumentList = null,
    Object? filteredVideoList = null,
    Object? isDocumentSearchLoading = null,
    Object? isVideoSearchLoading = null,
    Object? isWeblinkListLoading = null,
    Object? weblinkList = null,
    Object? weblinkQuery = null,
    Object? hasWeblinkListFailed = null,
  }) {
    return _then(_$EducationStateImpl(
      isDocumentListLoading: null == isDocumentListLoading
          ? _value.isDocumentListLoading
          : isDocumentListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoListLoading: null == isVideoListLoading
          ? _value.isVideoListLoading
          : isVideoListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      documentsList: null == documentsList
          ? _value._documentsList
          : documentsList // ignore: cast_nullable_to_non_nullable
              as List<EducationItem>,
      videoList: null == videoList
          ? _value._videoList
          : videoList // ignore: cast_nullable_to_non_nullable
              as List<EducationItem>,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      videoQuery: null == videoQuery
          ? _value.videoQuery
          : videoQuery // ignore: cast_nullable_to_non_nullable
              as String,
      filteredDocumentList: null == filteredDocumentList
          ? _value._filteredDocumentList
          : filteredDocumentList // ignore: cast_nullable_to_non_nullable
              as List<EducationItem>,
      filteredVideoList: null == filteredVideoList
          ? _value._filteredVideoList
          : filteredVideoList // ignore: cast_nullable_to_non_nullable
              as List<EducationItem>,
      isDocumentSearchLoading: null == isDocumentSearchLoading
          ? _value.isDocumentSearchLoading
          : isDocumentSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoSearchLoading: null == isVideoSearchLoading
          ? _value.isVideoSearchLoading
          : isVideoSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isWeblinkListLoading: null == isWeblinkListLoading
          ? _value.isWeblinkListLoading
          : isWeblinkListLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      weblinkList: null == weblinkList
          ? _value._weblinkList
          : weblinkList // ignore: cast_nullable_to_non_nullable
              as List<WeblinkItem>,
      weblinkQuery: null == weblinkQuery
          ? _value.weblinkQuery
          : weblinkQuery // ignore: cast_nullable_to_non_nullable
              as String,
      hasWeblinkListFailed: null == hasWeblinkListFailed
          ? _value.hasWeblinkListFailed
          : hasWeblinkListFailed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EducationStateImpl implements _EducationState {
  const _$EducationStateImpl(
      {this.isDocumentListLoading = false,
      this.isVideoListLoading = false,
      final List<EducationItem> documentsList = const [],
      final List<EducationItem> videoList = const [],
      this.query = '',
      this.videoQuery = '',
      final List<EducationItem> filteredDocumentList = const [],
      final List<EducationItem> filteredVideoList = const [],
      this.isDocumentSearchLoading = false,
      this.isVideoSearchLoading = false,
      this.isWeblinkListLoading = false,
      final List<WeblinkItem> weblinkList = const [],
      this.weblinkQuery = '',
      this.hasWeblinkListFailed = false})
      : _documentsList = documentsList,
        _videoList = videoList,
        _filteredDocumentList = filteredDocumentList,
        _filteredVideoList = filteredVideoList,
        _weblinkList = weblinkList;

  @override
  @JsonKey()
  final bool isDocumentListLoading;
  @override
  @JsonKey()
  final bool isVideoListLoading;
  final List<EducationItem> _documentsList;
  @override
  @JsonKey()
  List<EducationItem> get documentsList {
    if (_documentsList is EqualUnmodifiableListView) return _documentsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentsList);
  }

  final List<EducationItem> _videoList;
  @override
  @JsonKey()
  List<EducationItem> get videoList {
    if (_videoList is EqualUnmodifiableListView) return _videoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoList);
  }

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final String videoQuery;
  final List<EducationItem> _filteredDocumentList;
  @override
  @JsonKey()
  List<EducationItem> get filteredDocumentList {
    if (_filteredDocumentList is EqualUnmodifiableListView)
      return _filteredDocumentList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredDocumentList);
  }

  final List<EducationItem> _filteredVideoList;
  @override
  @JsonKey()
  List<EducationItem> get filteredVideoList {
    if (_filteredVideoList is EqualUnmodifiableListView)
      return _filteredVideoList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredVideoList);
  }

  @override
  @JsonKey()
  final bool isDocumentSearchLoading;
  @override
  @JsonKey()
  final bool isVideoSearchLoading;
  @override
  @JsonKey()
  final bool isWeblinkListLoading;
  final List<WeblinkItem> _weblinkList;
  @override
  @JsonKey()
  List<WeblinkItem> get weblinkList {
    if (_weblinkList is EqualUnmodifiableListView) return _weblinkList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weblinkList);
  }

  @override
  @JsonKey()
  final String weblinkQuery;

  /// Tells an empty list after a failed call apart from one the
  /// organisation simply has not filled yet.
  @override
  @JsonKey()
  final bool hasWeblinkListFailed;

  @override
  String toString() {
    return 'EducationState(isDocumentListLoading: $isDocumentListLoading, isVideoListLoading: $isVideoListLoading, documentsList: $documentsList, videoList: $videoList, query: $query, videoQuery: $videoQuery, filteredDocumentList: $filteredDocumentList, filteredVideoList: $filteredVideoList, isDocumentSearchLoading: $isDocumentSearchLoading, isVideoSearchLoading: $isVideoSearchLoading, isWeblinkListLoading: $isWeblinkListLoading, weblinkList: $weblinkList, weblinkQuery: $weblinkQuery, hasWeblinkListFailed: $hasWeblinkListFailed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationStateImpl &&
            (identical(other.isDocumentListLoading, isDocumentListLoading) ||
                other.isDocumentListLoading == isDocumentListLoading) &&
            (identical(other.isVideoListLoading, isVideoListLoading) ||
                other.isVideoListLoading == isVideoListLoading) &&
            const DeepCollectionEquality()
                .equals(other._documentsList, _documentsList) &&
            const DeepCollectionEquality()
                .equals(other._videoList, _videoList) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.videoQuery, videoQuery) ||
                other.videoQuery == videoQuery) &&
            const DeepCollectionEquality()
                .equals(other._filteredDocumentList, _filteredDocumentList) &&
            const DeepCollectionEquality()
                .equals(other._filteredVideoList, _filteredVideoList) &&
            (identical(
                    other.isDocumentSearchLoading, isDocumentSearchLoading) ||
                other.isDocumentSearchLoading == isDocumentSearchLoading) &&
            (identical(other.isVideoSearchLoading, isVideoSearchLoading) ||
                other.isVideoSearchLoading == isVideoSearchLoading) &&
            (identical(other.isWeblinkListLoading, isWeblinkListLoading) ||
                other.isWeblinkListLoading == isWeblinkListLoading) &&
            const DeepCollectionEquality()
                .equals(other._weblinkList, _weblinkList) &&
            (identical(other.weblinkQuery, weblinkQuery) ||
                other.weblinkQuery == weblinkQuery) &&
            (identical(other.hasWeblinkListFailed, hasWeblinkListFailed) ||
                other.hasWeblinkListFailed == hasWeblinkListFailed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDocumentListLoading,
      isVideoListLoading,
      const DeepCollectionEquality().hash(_documentsList),
      const DeepCollectionEquality().hash(_videoList),
      query,
      videoQuery,
      const DeepCollectionEquality().hash(_filteredDocumentList),
      const DeepCollectionEquality().hash(_filteredVideoList),
      isDocumentSearchLoading,
      isVideoSearchLoading,
      isWeblinkListLoading,
      const DeepCollectionEquality().hash(_weblinkList),
      weblinkQuery,
      hasWeblinkListFailed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationStateImplCopyWith<_$EducationStateImpl> get copyWith =>
      __$$EducationStateImplCopyWithImpl<_$EducationStateImpl>(
          this, _$identity);
}

abstract class _EducationState implements EducationState {
  const factory _EducationState(
      {final bool isDocumentListLoading,
      final bool isVideoListLoading,
      final List<EducationItem> documentsList,
      final List<EducationItem> videoList,
      final String query,
      final String videoQuery,
      final List<EducationItem> filteredDocumentList,
      final List<EducationItem> filteredVideoList,
      final bool isDocumentSearchLoading,
      final bool isVideoSearchLoading,
      final bool isWeblinkListLoading,
      final List<WeblinkItem> weblinkList,
      final String weblinkQuery,
      final bool hasWeblinkListFailed}) = _$EducationStateImpl;

  @override
  bool get isDocumentListLoading;
  @override
  bool get isVideoListLoading;
  @override
  List<EducationItem> get documentsList;
  @override
  List<EducationItem> get videoList;
  @override
  String get query;
  @override
  String get videoQuery;
  @override
  List<EducationItem> get filteredDocumentList;
  @override
  List<EducationItem> get filteredVideoList;
  @override
  bool get isDocumentSearchLoading;
  @override
  bool get isVideoSearchLoading;
  @override
  bool get isWeblinkListLoading;
  @override
  List<WeblinkItem> get weblinkList;
  @override
  String get weblinkQuery;
  @override

  /// Tells an empty list after a failed call apart from one the
  /// organisation simply has not filled yet.
  bool get hasWeblinkListFailed;
  @override
  @JsonKey(ignore: true)
  _$$EducationStateImplCopyWith<_$EducationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

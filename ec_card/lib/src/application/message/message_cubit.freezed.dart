// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageState {
  bool get isLoading => throw _privateConstructorUsedError;
  Map<String, List<dynamic>> get notificationsList =>
      throw _privateConstructorUsedError;
  Option<Either<AppErrors, EducationItem>>?
      get educationItemFetchFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  EducationItem? get educationItem => throw _privateConstructorUsedError;
  bool get isEducationItemFetched => throw _privateConstructorUsedError;
  bool get navigateToEducationItemDetails => throw _privateConstructorUsedError;

  /// Set once a weblink notification has been looked up, whether or not
  /// the link was found.
  bool get isWeblinkNotificationResolved => throw _privateConstructorUsedError;
  WeblinkItem? get notificationWeblink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageStateCopyWith<MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res, MessageState>;
  @useResult
  $Res call(
      {bool isLoading,
      Map<String, List<dynamic>> notificationsList,
      Option<Either<AppErrors, EducationItem>>?
          educationItemFetchFailureOrSuccessOption,
      EducationItem? educationItem,
      bool isEducationItemFetched,
      bool navigateToEducationItemDetails,
      bool isWeblinkNotificationResolved,
      WeblinkItem? notificationWeblink});

  $EducationItemCopyWith<$Res>? get educationItem;
  $WeblinkItemCopyWith<$Res>? get notificationWeblink;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res, $Val extends MessageState>
    implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? notificationsList = null,
    Object? educationItemFetchFailureOrSuccessOption = freezed,
    Object? educationItem = freezed,
    Object? isEducationItemFetched = null,
    Object? navigateToEducationItemDetails = null,
    Object? isWeblinkNotificationResolved = null,
    Object? notificationWeblink = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationsList: null == notificationsList
          ? _value.notificationsList
          : notificationsList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<dynamic>>,
      educationItemFetchFailureOrSuccessOption: freezed ==
              educationItemFetchFailureOrSuccessOption
          ? _value.educationItemFetchFailureOrSuccessOption
          : educationItemFetchFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, EducationItem>>?,
      educationItem: freezed == educationItem
          ? _value.educationItem
          : educationItem // ignore: cast_nullable_to_non_nullable
              as EducationItem?,
      isEducationItemFetched: null == isEducationItemFetched
          ? _value.isEducationItemFetched
          : isEducationItemFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToEducationItemDetails: null == navigateToEducationItemDetails
          ? _value.navigateToEducationItemDetails
          : navigateToEducationItemDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isWeblinkNotificationResolved: null == isWeblinkNotificationResolved
          ? _value.isWeblinkNotificationResolved
          : isWeblinkNotificationResolved // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationWeblink: freezed == notificationWeblink
          ? _value.notificationWeblink
          : notificationWeblink // ignore: cast_nullable_to_non_nullable
              as WeblinkItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EducationItemCopyWith<$Res>? get educationItem {
    if (_value.educationItem == null) {
      return null;
    }

    return $EducationItemCopyWith<$Res>(_value.educationItem!, (value) {
      return _then(_value.copyWith(educationItem: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeblinkItemCopyWith<$Res>? get notificationWeblink {
    if (_value.notificationWeblink == null) {
      return null;
    }

    return $WeblinkItemCopyWith<$Res>(_value.notificationWeblink!, (value) {
      return _then(_value.copyWith(notificationWeblink: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageStateImplCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$$MessageStateImplCopyWith(
          _$MessageStateImpl value, $Res Function(_$MessageStateImpl) then) =
      __$$MessageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Map<String, List<dynamic>> notificationsList,
      Option<Either<AppErrors, EducationItem>>?
          educationItemFetchFailureOrSuccessOption,
      EducationItem? educationItem,
      bool isEducationItemFetched,
      bool navigateToEducationItemDetails,
      bool isWeblinkNotificationResolved,
      WeblinkItem? notificationWeblink});

  @override
  $EducationItemCopyWith<$Res>? get educationItem;
  @override
  $WeblinkItemCopyWith<$Res>? get notificationWeblink;
}

/// @nodoc
class __$$MessageStateImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageStateImpl>
    implements _$$MessageStateImplCopyWith<$Res> {
  __$$MessageStateImplCopyWithImpl(
      _$MessageStateImpl _value, $Res Function(_$MessageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? notificationsList = null,
    Object? educationItemFetchFailureOrSuccessOption = freezed,
    Object? educationItem = freezed,
    Object? isEducationItemFetched = null,
    Object? navigateToEducationItemDetails = null,
    Object? isWeblinkNotificationResolved = null,
    Object? notificationWeblink = freezed,
  }) {
    return _then(_$MessageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationsList: null == notificationsList
          ? _value._notificationsList
          : notificationsList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<dynamic>>,
      educationItemFetchFailureOrSuccessOption: freezed ==
              educationItemFetchFailureOrSuccessOption
          ? _value.educationItemFetchFailureOrSuccessOption
          : educationItemFetchFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AppErrors, EducationItem>>?,
      educationItem: freezed == educationItem
          ? _value.educationItem
          : educationItem // ignore: cast_nullable_to_non_nullable
              as EducationItem?,
      isEducationItemFetched: null == isEducationItemFetched
          ? _value.isEducationItemFetched
          : isEducationItemFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToEducationItemDetails: null == navigateToEducationItemDetails
          ? _value.navigateToEducationItemDetails
          : navigateToEducationItemDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      isWeblinkNotificationResolved: null == isWeblinkNotificationResolved
          ? _value.isWeblinkNotificationResolved
          : isWeblinkNotificationResolved // ignore: cast_nullable_to_non_nullable
              as bool,
      notificationWeblink: freezed == notificationWeblink
          ? _value.notificationWeblink
          : notificationWeblink // ignore: cast_nullable_to_non_nullable
              as WeblinkItem?,
    ));
  }
}

/// @nodoc

class _$MessageStateImpl implements _MessageState {
  const _$MessageStateImpl(
      {this.isLoading = false,
      final Map<String, List<dynamic>> notificationsList = const {},
      this.educationItemFetchFailureOrSuccessOption,
      this.educationItem,
      this.isEducationItemFetched = false,
      this.navigateToEducationItemDetails = false,
      this.isWeblinkNotificationResolved = false,
      this.notificationWeblink})
      : _notificationsList = notificationsList;

  @override
  @JsonKey()
  final bool isLoading;
  final Map<String, List<dynamic>> _notificationsList;
  @override
  @JsonKey()
  Map<String, List<dynamic>> get notificationsList {
    if (_notificationsList is EqualUnmodifiableMapView)
      return _notificationsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_notificationsList);
  }

  @override
  final Option<Either<AppErrors, EducationItem>>?
      educationItemFetchFailureOrSuccessOption;
  @override
  final EducationItem? educationItem;
  @override
  @JsonKey()
  final bool isEducationItemFetched;
  @override
  @JsonKey()
  final bool navigateToEducationItemDetails;

  /// Set once a weblink notification has been looked up, whether or not
  /// the link was found.
  @override
  @JsonKey()
  final bool isWeblinkNotificationResolved;
  @override
  final WeblinkItem? notificationWeblink;

  @override
  String toString() {
    return 'MessageState(isLoading: $isLoading, notificationsList: $notificationsList, educationItemFetchFailureOrSuccessOption: $educationItemFetchFailureOrSuccessOption, educationItem: $educationItem, isEducationItemFetched: $isEducationItemFetched, navigateToEducationItemDetails: $navigateToEducationItemDetails, isWeblinkNotificationResolved: $isWeblinkNotificationResolved, notificationWeblink: $notificationWeblink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._notificationsList, _notificationsList) &&
            (identical(other.educationItemFetchFailureOrSuccessOption,
                    educationItemFetchFailureOrSuccessOption) ||
                other.educationItemFetchFailureOrSuccessOption ==
                    educationItemFetchFailureOrSuccessOption) &&
            (identical(other.educationItem, educationItem) ||
                other.educationItem == educationItem) &&
            (identical(other.isEducationItemFetched, isEducationItemFetched) ||
                other.isEducationItemFetched == isEducationItemFetched) &&
            (identical(other.navigateToEducationItemDetails,
                    navigateToEducationItemDetails) ||
                other.navigateToEducationItemDetails ==
                    navigateToEducationItemDetails) &&
            (identical(other.isWeblinkNotificationResolved,
                    isWeblinkNotificationResolved) ||
                other.isWeblinkNotificationResolved ==
                    isWeblinkNotificationResolved) &&
            (identical(other.notificationWeblink, notificationWeblink) ||
                other.notificationWeblink == notificationWeblink));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_notificationsList),
      educationItemFetchFailureOrSuccessOption,
      educationItem,
      isEducationItemFetched,
      navigateToEducationItemDetails,
      isWeblinkNotificationResolved,
      notificationWeblink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageStateImplCopyWith<_$MessageStateImpl> get copyWith =>
      __$$MessageStateImplCopyWithImpl<_$MessageStateImpl>(this, _$identity);
}

abstract class _MessageState implements MessageState {
  const factory _MessageState(
      {final bool isLoading,
      final Map<String, List<dynamic>> notificationsList,
      final Option<Either<AppErrors, EducationItem>>?
          educationItemFetchFailureOrSuccessOption,
      final EducationItem? educationItem,
      final bool isEducationItemFetched,
      final bool navigateToEducationItemDetails,
      final bool isWeblinkNotificationResolved,
      final WeblinkItem? notificationWeblink}) = _$MessageStateImpl;

  @override
  bool get isLoading;
  @override
  Map<String, List<dynamic>> get notificationsList;
  @override
  Option<Either<AppErrors, EducationItem>>?
      get educationItemFetchFailureOrSuccessOption;
  @override
  EducationItem? get educationItem;
  @override
  bool get isEducationItemFetched;
  @override
  bool get navigateToEducationItemDetails;
  @override

  /// Set once a weblink notification has been looked up, whether or not
  /// the link was found.
  bool get isWeblinkNotificationResolved;
  @override
  WeblinkItem? get notificationWeblink;
  @override
  @JsonKey(ignore: true)
  _$$MessageStateImplCopyWith<_$MessageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

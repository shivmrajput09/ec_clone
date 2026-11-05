// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileData {
  Profile get profile;
  Questions get questions;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      _$UserProfileDataCopyWithImpl<UserProfileData>(
          this as UserProfileData, _$identity);

  /// Serializes this UserProfileData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as UserProfileData;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserProfileData &&
            (identical(other.profile, _this.profile) ||
                other.profile == _this.profile) &&
            (identical(other.questions, _this.questions) ||
                other.questions == _this.questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as UserProfileData;
    return Object.hash(runtimeType, _this.profile, _this.questions);
  }

  @override
  String toString() {
    final _this = this as UserProfileData;
    return 'UserProfileData(profile: ${_this.profile}, questions: ${_this.questions})';
  }
}

/// @nodoc
abstract mixin class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) _then) =
      _$UserProfileDataCopyWithImpl;
  @useResult
  $Res call({Profile profile, Questions questions});

  $ProfileCopyWith<$Res> get profile;
  $QuestionsCopyWith<$Res> get questions;
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._self, this._then);

  final UserProfileData _self;
  final $Res Function(UserProfileData) _then;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
    Object? questions = null,
  }) {
    return _then(UserProfileData(
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Questions,
    ));
  }

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_self.profile, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res> get questions {
    return $QuestionsCopyWith<$Res>(_self.questions, (value) {
      return _then(_self.copyWith(questions: value));
    });
  }
}

/// Adds pattern-matching-related methods to [UserProfileData].
extension UserProfileDataPatterns on UserProfileData {
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
    TResult Function(_UserProfileData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserProfileData() when $default != null:
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
    TResult Function(_UserProfileData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfileData():
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
    TResult? Function(_UserProfileData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfileData() when $default != null:
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
    TResult Function(Profile profile, Questions questions)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserProfileData() when $default != null:
        return $default(_that.profile, _that.questions);
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
    TResult Function(Profile profile, Questions questions) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfileData():
        return $default(_that.profile, _that.questions);
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
    TResult? Function(Profile profile, Questions questions)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserProfileData() when $default != null:
        return $default(_that.profile, _that.questions);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _UserProfileData implements UserProfileData {
  const _UserProfileData({required this.profile, required this.questions});
  factory _UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDataFromJson(json);

  @override
  final Profile profile;
  @override
  final Questions questions;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserProfileDataCopyWith<_UserProfileData> get copyWith =>
      __$UserProfileDataCopyWithImpl<_UserProfileData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserProfileDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserProfileData &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.questions, questions) ||
                other.questions == questions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, profile, questions);
  }

  @override
  String toString() {
    return 'UserProfileData(profile: $profile, questions: $questions)';
  }
}

/// @nodoc
abstract mixin class _$UserProfileDataCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$UserProfileDataCopyWith(
          _UserProfileData value, $Res Function(_UserProfileData) _then) =
      __$UserProfileDataCopyWithImpl;
  @override
  @useResult
  $Res call({Profile profile, Questions questions});

  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $QuestionsCopyWith<$Res> get questions;
}

/// @nodoc
class __$UserProfileDataCopyWithImpl<$Res>
    implements _$UserProfileDataCopyWith<$Res> {
  __$UserProfileDataCopyWithImpl(this._self, this._then);

  final _UserProfileData _self;
  final $Res Function(_UserProfileData) _then;

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profile = null,
    Object? questions = null,
  }) {
    return _then(_UserProfileData(
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Questions,
    ));
  }

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_self.profile, (value) {
      return _then(_self.copyWith(profile: value));
    });
  }

  /// Create a copy of UserProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<$Res> get questions {
    return $QuestionsCopyWith<$Res>(_self.questions, (value) {
      return _then(_self.copyWith(questions: value));
    });
  }
}

/// @nodoc
mixin _$Profile {
  String get mobile;
  String get postalCode;
  String get dateOfBirth;
  String get gender;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<Profile> get copyWith =>
      _$ProfileCopyWithImpl<Profile>(this as Profile, _$identity);

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as Profile;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Profile &&
            (identical(other.mobile, _this.mobile) ||
                other.mobile == _this.mobile) &&
            (identical(other.postalCode, _this.postalCode) ||
                other.postalCode == _this.postalCode) &&
            (identical(other.dateOfBirth, _this.dateOfBirth) ||
                other.dateOfBirth == _this.dateOfBirth) &&
            (identical(other.gender, _this.gender) ||
                other.gender == _this.gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Profile;
    return Object.hash(runtimeType, _this.mobile, _this.postalCode,
        _this.dateOfBirth, _this.gender);
  }

  @override
  String toString() {
    final _this = this as Profile;
    return 'Profile(mobile: ${_this.mobile}, postalCode: ${_this.postalCode}, dateOfBirth: ${_this.dateOfBirth}, gender: ${_this.gender})';
  }
}

/// @nodoc
abstract mixin class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) _then) =
      _$ProfileCopyWithImpl;
  @useResult
  $Res call(
      {String mobile, String postalCode, String dateOfBirth, String gender});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._self, this._then);

  final Profile _self;
  final $Res Function(Profile) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? postalCode = null,
    Object? dateOfBirth = null,
    Object? gender = null,
  }) {
    return _then(Profile(
      mobile: null == mobile
          ? _self.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _self.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Profile].
extension ProfilePatterns on Profile {
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
    TResult Function(_Profile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
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
    TResult Function(_Profile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile():
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
    TResult? Function(_Profile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
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
    TResult Function(String mobile, String postalCode, String dateOfBirth,
            String gender)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
        return $default(
            _that.mobile, _that.postalCode, _that.dateOfBirth, _that.gender);
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
            String mobile, String postalCode, String dateOfBirth, String gender)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile():
        return $default(
            _that.mobile, _that.postalCode, _that.dateOfBirth, _that.gender);
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
    TResult? Function(String mobile, String postalCode, String dateOfBirth,
            String gender)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Profile() when $default != null:
        return $default(
            _that.mobile, _that.postalCode, _that.dateOfBirth, _that.gender);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Profile implements Profile {
  const _Profile(
      {required this.mobile,
      required this.postalCode,
      required this.dateOfBirth,
      required this.gender});
  factory _Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  @override
  final String mobile;
  @override
  final String postalCode;
  @override
  final String dateOfBirth;
  @override
  final String gender;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileCopyWith<_Profile> get copyWith =>
      __$ProfileCopyWithImpl<_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Profile &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, mobile, postalCode, dateOfBirth, gender);
  }

  @override
  String toString() {
    return 'Profile(mobile: $mobile, postalCode: $postalCode, dateOfBirth: $dateOfBirth, gender: $gender)';
  }
}

/// @nodoc
abstract mixin class _$ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$ProfileCopyWith(_Profile value, $Res Function(_Profile) _then) =
      __$ProfileCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String mobile, String postalCode, String dateOfBirth, String gender});
}

/// @nodoc
class __$ProfileCopyWithImpl<$Res> implements _$ProfileCopyWith<$Res> {
  __$ProfileCopyWithImpl(this._self, this._then);

  final _Profile _self;
  final $Res Function(_Profile) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mobile = null,
    Object? postalCode = null,
    Object? dateOfBirth = null,
    Object? gender = null,
  }) {
    return _then(_Profile(
      mobile: null == mobile
          ? _self.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      postalCode: null == postalCode
          ? _self.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _self.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Questions {
  bool get show;
  List<Question> get list;

  /// Create a copy of Questions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuestionsCopyWith<Questions> get copyWith =>
      _$QuestionsCopyWithImpl<Questions>(this as Questions, _$identity);

  /// Serializes this Questions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as Questions;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Questions &&
            (identical(other.show, _this.show) || other.show == _this.show) &&
            const DeepCollectionEquality().equals(other.list, _this.list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Questions;
    return Object.hash(runtimeType, _this.show,
        const DeepCollectionEquality().hash(_this.list));
  }

  @override
  String toString() {
    final _this = this as Questions;
    return 'Questions(show: ${_this.show}, list: ${_this.list})';
  }
}

/// @nodoc
abstract mixin class $QuestionsCopyWith<$Res> {
  factory $QuestionsCopyWith(Questions value, $Res Function(Questions) _then) =
      _$QuestionsCopyWithImpl;
  @useResult
  $Res call({bool show, List<Question> list});
}

/// @nodoc
class _$QuestionsCopyWithImpl<$Res> implements $QuestionsCopyWith<$Res> {
  _$QuestionsCopyWithImpl(this._self, this._then);

  final Questions _self;
  final $Res Function(Questions) _then;

  /// Create a copy of Questions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
    Object? list = null,
  }) {
    return _then(Questions(
      show: null == show
          ? _self.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Questions].
extension QuestionsPatterns on Questions {
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
    TResult Function(_Questions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Questions() when $default != null:
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
    TResult Function(_Questions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Questions():
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
    TResult? Function(_Questions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Questions() when $default != null:
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
    TResult Function(bool show, List<Question> list)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Questions() when $default != null:
        return $default(_that.show, _that.list);
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
    TResult Function(bool show, List<Question> list) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Questions():
        return $default(_that.show, _that.list);
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
    TResult? Function(bool show, List<Question> list)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Questions() when $default != null:
        return $default(_that.show, _that.list);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Questions implements Questions {
  const _Questions({required this.show, required List<Question> list})
      : _list = list;
  factory _Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);

  @override
  final bool show;
  final List<Question> _list;
  @override
  List<Question> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  /// Create a copy of Questions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuestionsCopyWith<_Questions> get copyWith =>
      __$QuestionsCopyWithImpl<_Questions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Questions &&
            (identical(other.show, show) || other.show == show) &&
            const DeepCollectionEquality().equals(other.list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType, show, const DeepCollectionEquality().hash(_list));
  }

  @override
  String toString() {
    return 'Questions(show: $show, list: $list)';
  }
}

/// @nodoc
abstract mixin class _$QuestionsCopyWith<$Res>
    implements $QuestionsCopyWith<$Res> {
  factory _$QuestionsCopyWith(
          _Questions value, $Res Function(_Questions) _then) =
      __$QuestionsCopyWithImpl;
  @override
  @useResult
  $Res call({bool show, List<Question> list});
}

/// @nodoc
class __$QuestionsCopyWithImpl<$Res> implements _$QuestionsCopyWith<$Res> {
  __$QuestionsCopyWithImpl(this._self, this._then);

  final _Questions _self;
  final $Res Function(_Questions) _then;

  /// Create a copy of Questions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? show = null,
    Object? list = null,
  }) {
    return _then(_Questions(
      show: null == show
          ? _self.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
      list: null == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
mixin _$Question {
  String get choiceType;
  bool get required;
  bool get enabled;
  String get type;
  String get title;
  String get questionType;
  List<String> get options;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<Question> get copyWith =>
      _$QuestionCopyWithImpl<Question>(this as Question, _$identity);

  /// Serializes this Question to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as Question;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Question &&
            (identical(other.choiceType, _this.choiceType) ||
                other.choiceType == _this.choiceType) &&
            (identical(other.required, _this.required) ||
                other.required == _this.required) &&
            (identical(other.enabled, _this.enabled) ||
                other.enabled == _this.enabled) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.title, _this.title) ||
                other.title == _this.title) &&
            (identical(other.questionType, _this.questionType) ||
                other.questionType == _this.questionType) &&
            const DeepCollectionEquality()
                .equals(other.options, _this.options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as Question;
    return Object.hash(
        runtimeType,
        _this.choiceType,
        _this.required,
        _this.enabled,
        _this.type,
        _this.title,
        _this.questionType,
        const DeepCollectionEquality().hash(_this.options));
  }

  @override
  String toString() {
    final _this = this as Question;
    return 'Question(choiceType: ${_this.choiceType}, required: ${_this.required}, enabled: ${_this.enabled}, type: ${_this.type}, title: ${_this.title}, questionType: ${_this.questionType}, options: ${_this.options})';
  }
}

/// @nodoc
abstract mixin class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) _then) =
      _$QuestionCopyWithImpl;
  @useResult
  $Res call(
      {String choiceType,
      bool required,
      bool enabled,
      String type,
      String title,
      String questionType,
      List<String> options});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._self, this._then);

  final Question _self;
  final $Res Function(Question) _then;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choiceType = null,
    Object? required = null,
    Object? enabled = null,
    Object? type = null,
    Object? title = null,
    Object? questionType = null,
    Object? options = null,
  }) {
    return _then(Question(
      choiceType: null == choiceType
          ? _self.choiceType
          : choiceType // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _self.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _self.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [Question].
extension QuestionPatterns on Question {
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
    TResult Function(_Question value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Question() when $default != null:
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
    TResult Function(_Question value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Question():
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
    TResult? Function(_Question value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Question() when $default != null:
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
            String choiceType,
            bool required,
            bool enabled,
            String type,
            String title,
            String questionType,
            List<String> options)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Question() when $default != null:
        return $default(_that.choiceType, _that.required, _that.enabled,
            _that.type, _that.title, _that.questionType, _that.options);
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
            String choiceType,
            bool required,
            bool enabled,
            String type,
            String title,
            String questionType,
            List<String> options)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Question():
        return $default(_that.choiceType, _that.required, _that.enabled,
            _that.type, _that.title, _that.questionType, _that.options);
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
            String choiceType,
            bool required,
            bool enabled,
            String type,
            String title,
            String questionType,
            List<String> options)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Question() when $default != null:
        return $default(_that.choiceType, _that.required, _that.enabled,
            _that.type, _that.title, _that.questionType, _that.options);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Question implements Question {
  const _Question(
      {required this.choiceType,
      required this.required,
      required this.enabled,
      required this.type,
      required this.title,
      required this.questionType,
      required List<String> options})
      : _options = options;
  factory _Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  @override
  final String choiceType;
  @override
  final bool required;
  @override
  final bool enabled;
  @override
  final String type;
  @override
  final String title;
  @override
  final String questionType;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$QuestionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Question &&
            (identical(other.choiceType, choiceType) ||
                other.choiceType == choiceType) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.questionType, questionType) ||
                other.questionType == questionType) &&
            const DeepCollectionEquality().equals(other.options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, choiceType, required, enabled, type, title,
        questionType, const DeepCollectionEquality().hash(_options));
  }

  @override
  String toString() {
    return 'Question(choiceType: $choiceType, required: $required, enabled: $enabled, type: $type, title: $title, questionType: $questionType, options: $options)';
  }
}

/// @nodoc
abstract mixin class _$QuestionCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) _then) =
      __$QuestionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String choiceType,
      bool required,
      bool enabled,
      String type,
      String title,
      String questionType,
      List<String> options});
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(this._self, this._then);

  final _Question _self;
  final $Res Function(_Question) _then;

  /// Create a copy of Question
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? choiceType = null,
    Object? required = null,
    Object? enabled = null,
    Object? type = null,
    Object? title = null,
    Object? questionType = null,
    Object? options = null,
  }) {
    return _then(_Question(
      choiceType: null == choiceType
          ? _self.choiceType
          : choiceType // ignore: cast_nullable_to_non_nullable
              as String,
      required: null == required
          ? _self.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      enabled: null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      questionType: null == questionType
          ? _self.questionType
          : questionType // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _self._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on

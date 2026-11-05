// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'org_brand_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrgBrandInfoData {
  @JsonKey(name: 'orgName')
  String get orgName;
  @JsonKey(name: 'city')
  String get city;
  @JsonKey(name: 'county')
  String get county;
  @JsonKey(name: 'country')
  String get country;
  @JsonKey(name: 'countryCode')
  String get countryCode;
  @JsonKey(name: 'copyrightText')
  String get copyrightText;
  @JsonKey(name: 'brandLogo')
  String get brandLogo;
  @JsonKey(name: 'isPublished')
  bool get isPublished;
  @JsonKey(name: 'isActivated')
  bool get isActivated;
  @JsonKey(name: 'isDeleted')
  bool get isDeleted;
  @JsonKey(name: 'orgId')
  String get orgId;
  @JsonKey(name: 'created')
  String get created;
  @JsonKey(name: 'lastModified')
  String get lastModified;

  /// Create a copy of OrgBrandInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrgBrandInfoDataCopyWith<OrgBrandInfoData> get copyWith =>
      _$OrgBrandInfoDataCopyWithImpl<OrgBrandInfoData>(
          this as OrgBrandInfoData, _$identity);

  /// Serializes this OrgBrandInfoData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as OrgBrandInfoData;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrgBrandInfoData &&
            (identical(other.orgName, _this.orgName) ||
                other.orgName == _this.orgName) &&
            (identical(other.city, _this.city) || other.city == _this.city) &&
            (identical(other.county, _this.county) ||
                other.county == _this.county) &&
            (identical(other.country, _this.country) ||
                other.country == _this.country) &&
            (identical(other.countryCode, _this.countryCode) ||
                other.countryCode == _this.countryCode) &&
            (identical(other.copyrightText, _this.copyrightText) ||
                other.copyrightText == _this.copyrightText) &&
            (identical(other.brandLogo, _this.brandLogo) ||
                other.brandLogo == _this.brandLogo) &&
            (identical(other.isPublished, _this.isPublished) ||
                other.isPublished == _this.isPublished) &&
            (identical(other.isActivated, _this.isActivated) ||
                other.isActivated == _this.isActivated) &&
            (identical(other.isDeleted, _this.isDeleted) ||
                other.isDeleted == _this.isDeleted) &&
            (identical(other.orgId, _this.orgId) ||
                other.orgId == _this.orgId) &&
            (identical(other.created, _this.created) ||
                other.created == _this.created) &&
            (identical(other.lastModified, _this.lastModified) ||
                other.lastModified == _this.lastModified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as OrgBrandInfoData;
    return Object.hash(
        runtimeType,
        _this.orgName,
        _this.city,
        _this.county,
        _this.country,
        _this.countryCode,
        _this.copyrightText,
        _this.brandLogo,
        _this.isPublished,
        _this.isActivated,
        _this.isDeleted,
        _this.orgId,
        _this.created,
        _this.lastModified);
  }

  @override
  String toString() {
    final _this = this as OrgBrandInfoData;
    return 'OrgBrandInfoData(orgName: ${_this.orgName}, city: ${_this.city}, county: ${_this.county}, country: ${_this.country}, countryCode: ${_this.countryCode}, copyrightText: ${_this.copyrightText}, brandLogo: ${_this.brandLogo}, isPublished: ${_this.isPublished}, isActivated: ${_this.isActivated}, isDeleted: ${_this.isDeleted}, orgId: ${_this.orgId}, created: ${_this.created}, lastModified: ${_this.lastModified})';
  }
}

/// @nodoc
abstract mixin class $OrgBrandInfoDataCopyWith<$Res> {
  factory $OrgBrandInfoDataCopyWith(
          OrgBrandInfoData value, $Res Function(OrgBrandInfoData) _then) =
      _$OrgBrandInfoDataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'orgName') String orgName,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'county') String county,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'countryCode') String countryCode,
      @JsonKey(name: 'copyrightText') String copyrightText,
      @JsonKey(name: 'brandLogo') String brandLogo,
      @JsonKey(name: 'isPublished') bool isPublished,
      @JsonKey(name: 'isActivated') bool isActivated,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'orgId') String orgId,
      @JsonKey(name: 'created') String created,
      @JsonKey(name: 'lastModified') String lastModified});
}

/// @nodoc
class _$OrgBrandInfoDataCopyWithImpl<$Res>
    implements $OrgBrandInfoDataCopyWith<$Res> {
  _$OrgBrandInfoDataCopyWithImpl(this._self, this._then);

  final OrgBrandInfoData _self;
  final $Res Function(OrgBrandInfoData) _then;

  /// Create a copy of OrgBrandInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orgName = null,
    Object? city = null,
    Object? county = null,
    Object? country = null,
    Object? countryCode = null,
    Object? copyrightText = null,
    Object? brandLogo = null,
    Object? isPublished = null,
    Object? isActivated = null,
    Object? isDeleted = null,
    Object? orgId = null,
    Object? created = null,
    Object? lastModified = null,
  }) {
    return _then(OrgBrandInfoData(
      orgName: null == orgName
          ? _self.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: null == county
          ? _self.county
          : county // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      copyrightText: null == copyrightText
          ? _self.copyrightText
          : copyrightText // ignore: cast_nullable_to_non_nullable
              as String,
      brandLogo: null == brandLogo
          ? _self.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: null == isPublished
          ? _self.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _self.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      orgId: null == orgId
          ? _self.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _self.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrgBrandInfoData].
extension OrgBrandInfoDataPatterns on OrgBrandInfoData {
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
    TResult Function(_OrgBrandInfoData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrgBrandInfoData() when $default != null:
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
    TResult Function(_OrgBrandInfoData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrgBrandInfoData():
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
    TResult? Function(_OrgBrandInfoData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrgBrandInfoData() when $default != null:
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
            @JsonKey(name: 'orgName') String orgName,
            @JsonKey(name: 'city') String city,
            @JsonKey(name: 'county') String county,
            @JsonKey(name: 'country') String country,
            @JsonKey(name: 'countryCode') String countryCode,
            @JsonKey(name: 'copyrightText') String copyrightText,
            @JsonKey(name: 'brandLogo') String brandLogo,
            @JsonKey(name: 'isPublished') bool isPublished,
            @JsonKey(name: 'isActivated') bool isActivated,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'orgId') String orgId,
            @JsonKey(name: 'created') String created,
            @JsonKey(name: 'lastModified') String lastModified)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _OrgBrandInfoData() when $default != null:
        return $default(
            _that.orgName,
            _that.city,
            _that.county,
            _that.country,
            _that.countryCode,
            _that.copyrightText,
            _that.brandLogo,
            _that.isPublished,
            _that.isActivated,
            _that.isDeleted,
            _that.orgId,
            _that.created,
            _that.lastModified);
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
            @JsonKey(name: 'orgName') String orgName,
            @JsonKey(name: 'city') String city,
            @JsonKey(name: 'county') String county,
            @JsonKey(name: 'country') String country,
            @JsonKey(name: 'countryCode') String countryCode,
            @JsonKey(name: 'copyrightText') String copyrightText,
            @JsonKey(name: 'brandLogo') String brandLogo,
            @JsonKey(name: 'isPublished') bool isPublished,
            @JsonKey(name: 'isActivated') bool isActivated,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'orgId') String orgId,
            @JsonKey(name: 'created') String created,
            @JsonKey(name: 'lastModified') String lastModified)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrgBrandInfoData():
        return $default(
            _that.orgName,
            _that.city,
            _that.county,
            _that.country,
            _that.countryCode,
            _that.copyrightText,
            _that.brandLogo,
            _that.isPublished,
            _that.isActivated,
            _that.isDeleted,
            _that.orgId,
            _that.created,
            _that.lastModified);
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
            @JsonKey(name: 'orgName') String orgName,
            @JsonKey(name: 'city') String city,
            @JsonKey(name: 'county') String county,
            @JsonKey(name: 'country') String country,
            @JsonKey(name: 'countryCode') String countryCode,
            @JsonKey(name: 'copyrightText') String copyrightText,
            @JsonKey(name: 'brandLogo') String brandLogo,
            @JsonKey(name: 'isPublished') bool isPublished,
            @JsonKey(name: 'isActivated') bool isActivated,
            @JsonKey(name: 'isDeleted') bool isDeleted,
            @JsonKey(name: 'orgId') String orgId,
            @JsonKey(name: 'created') String created,
            @JsonKey(name: 'lastModified') String lastModified)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _OrgBrandInfoData() when $default != null:
        return $default(
            _that.orgName,
            _that.city,
            _that.county,
            _that.country,
            _that.countryCode,
            _that.copyrightText,
            _that.brandLogo,
            _that.isPublished,
            _that.isActivated,
            _that.isDeleted,
            _that.orgId,
            _that.created,
            _that.lastModified);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _OrgBrandInfoData implements OrgBrandInfoData {
  const _OrgBrandInfoData(
      {@JsonKey(name: 'orgName') this.orgName = '',
      @JsonKey(name: 'city') this.city = '',
      @JsonKey(name: 'county') this.county = '',
      @JsonKey(name: 'country') this.country = '',
      @JsonKey(name: 'countryCode') this.countryCode = '',
      @JsonKey(name: 'copyrightText') this.copyrightText = '',
      @JsonKey(name: 'brandLogo') this.brandLogo = '',
      @JsonKey(name: 'isPublished') this.isPublished = false,
      @JsonKey(name: 'isActivated') this.isActivated = false,
      @JsonKey(name: 'isDeleted') this.isDeleted = false,
      @JsonKey(name: 'orgId') this.orgId = '',
      @JsonKey(name: 'created') this.created = '',
      @JsonKey(name: 'lastModified') this.lastModified = ''});
  factory _OrgBrandInfoData.fromJson(Map<String, dynamic> json) =>
      _$OrgBrandInfoDataFromJson(json);

  @override
  @JsonKey(name: 'orgName')
  final String orgName;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'county')
  final String county;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'countryCode')
  final String countryCode;
  @override
  @JsonKey(name: 'copyrightText')
  final String copyrightText;
  @override
  @JsonKey(name: 'brandLogo')
  final String brandLogo;
  @override
  @JsonKey(name: 'isPublished')
  final bool isPublished;
  @override
  @JsonKey(name: 'isActivated')
  final bool isActivated;
  @override
  @JsonKey(name: 'isDeleted')
  final bool isDeleted;
  @override
  @JsonKey(name: 'orgId')
  final String orgId;
  @override
  @JsonKey(name: 'created')
  final String created;
  @override
  @JsonKey(name: 'lastModified')
  final String lastModified;

  /// Create a copy of OrgBrandInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OrgBrandInfoDataCopyWith<_OrgBrandInfoData> get copyWith =>
      __$OrgBrandInfoDataCopyWithImpl<_OrgBrandInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OrgBrandInfoDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrgBrandInfoData &&
            (identical(other.orgName, orgName) || other.orgName == orgName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.copyrightText, copyrightText) ||
                other.copyrightText == copyrightText) &&
            (identical(other.brandLogo, brandLogo) ||
                other.brandLogo == brandLogo) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.isActivated, isActivated) ||
                other.isActivated == isActivated) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.orgId, orgId) || other.orgId == orgId) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.lastModified, lastModified) ||
                other.lastModified == lastModified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        orgName,
        city,
        county,
        country,
        countryCode,
        copyrightText,
        brandLogo,
        isPublished,
        isActivated,
        isDeleted,
        orgId,
        created,
        lastModified);
  }

  @override
  String toString() {
    return 'OrgBrandInfoData(orgName: $orgName, city: $city, county: $county, country: $country, countryCode: $countryCode, copyrightText: $copyrightText, brandLogo: $brandLogo, isPublished: $isPublished, isActivated: $isActivated, isDeleted: $isDeleted, orgId: $orgId, created: $created, lastModified: $lastModified)';
  }
}

/// @nodoc
abstract mixin class _$OrgBrandInfoDataCopyWith<$Res>
    implements $OrgBrandInfoDataCopyWith<$Res> {
  factory _$OrgBrandInfoDataCopyWith(
          _OrgBrandInfoData value, $Res Function(_OrgBrandInfoData) _then) =
      __$OrgBrandInfoDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'orgName') String orgName,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'county') String county,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'countryCode') String countryCode,
      @JsonKey(name: 'copyrightText') String copyrightText,
      @JsonKey(name: 'brandLogo') String brandLogo,
      @JsonKey(name: 'isPublished') bool isPublished,
      @JsonKey(name: 'isActivated') bool isActivated,
      @JsonKey(name: 'isDeleted') bool isDeleted,
      @JsonKey(name: 'orgId') String orgId,
      @JsonKey(name: 'created') String created,
      @JsonKey(name: 'lastModified') String lastModified});
}

/// @nodoc
class __$OrgBrandInfoDataCopyWithImpl<$Res>
    implements _$OrgBrandInfoDataCopyWith<$Res> {
  __$OrgBrandInfoDataCopyWithImpl(this._self, this._then);

  final _OrgBrandInfoData _self;
  final $Res Function(_OrgBrandInfoData) _then;

  /// Create a copy of OrgBrandInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orgName = null,
    Object? city = null,
    Object? county = null,
    Object? country = null,
    Object? countryCode = null,
    Object? copyrightText = null,
    Object? brandLogo = null,
    Object? isPublished = null,
    Object? isActivated = null,
    Object? isDeleted = null,
    Object? orgId = null,
    Object? created = null,
    Object? lastModified = null,
  }) {
    return _then(_OrgBrandInfoData(
      orgName: null == orgName
          ? _self.orgName
          : orgName // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      county: null == county
          ? _self.county
          : county // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      copyrightText: null == copyrightText
          ? _self.copyrightText
          : copyrightText // ignore: cast_nullable_to_non_nullable
              as String,
      brandLogo: null == brandLogo
          ? _self.brandLogo
          : brandLogo // ignore: cast_nullable_to_non_nullable
              as String,
      isPublished: null == isPublished
          ? _self.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool,
      isActivated: null == isActivated
          ? _self.isActivated
          : isActivated // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _self.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      orgId: null == orgId
          ? _self.orgId
          : orgId // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _self.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      lastModified: null == lastModified
          ? _self.lastModified
          : lastModified // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

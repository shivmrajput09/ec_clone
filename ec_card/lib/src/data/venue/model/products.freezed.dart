// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductBody _$ProductBodyFromJson(Map<String, dynamic> json) {
  return _ProductBody.fromJson(json);
}

/// @nodoc
mixin _$ProductBody {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'orgProductId')
  String get orgProductId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductBodyCopyWith<ProductBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBodyCopyWith<$Res> {
  factory $ProductBodyCopyWith(
          ProductBody value, $Res Function(ProductBody) then) =
      _$ProductBodyCopyWithImpl<$Res, ProductBody>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'orgProductId') String orgProductId});
}

/// @nodoc
class _$ProductBodyCopyWithImpl<$Res, $Val extends ProductBody>
    implements $ProductBodyCopyWith<$Res> {
  _$ProductBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? orgProductId = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      orgProductId: null == orgProductId
          ? _value.orgProductId
          : orgProductId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductBodyImplCopyWith<$Res>
    implements $ProductBodyCopyWith<$Res> {
  factory _$$ProductBodyImplCopyWith(
          _$ProductBodyImpl value, $Res Function(_$ProductBodyImpl) then) =
      __$$ProductBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'orgProductId') String orgProductId});
}

/// @nodoc
class __$$ProductBodyImplCopyWithImpl<$Res>
    extends _$ProductBodyCopyWithImpl<$Res, _$ProductBodyImpl>
    implements _$$ProductBodyImplCopyWith<$Res> {
  __$$ProductBodyImplCopyWithImpl(
      _$ProductBodyImpl _value, $Res Function(_$ProductBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? orgProductId = null,
  }) {
    return _then(_$ProductBodyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      orgProductId: null == orgProductId
          ? _value.orgProductId
          : orgProductId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductBodyImpl implements _ProductBody {
  const _$ProductBodyImpl(
      {@JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'orgProductId') this.orgProductId = ''});

  factory _$ProductBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductBodyImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'orgProductId')
  final String orgProductId;

  @override
  String toString() {
    return 'ProductBody(name: $name, description: $description, image: $image, orgProductId: $orgProductId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.orgProductId, orgProductId) ||
                other.orgProductId == orgProductId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, description, image, orgProductId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBodyImplCopyWith<_$ProductBodyImpl> get copyWith =>
      __$$ProductBodyImplCopyWithImpl<_$ProductBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductBodyImplToJson(
      this,
    );
  }
}

abstract class _ProductBody implements ProductBody {
  const factory _ProductBody(
          {@JsonKey(name: 'name') final String name,
          @JsonKey(name: 'description') final String description,
          @JsonKey(name: 'image') final String image,
          @JsonKey(name: 'orgProductId') final String orgProductId}) =
      _$ProductBodyImpl;

  factory _ProductBody.fromJson(Map<String, dynamic> json) =
      _$ProductBodyImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'orgProductId')
  String get orgProductId;
  @override
  @JsonKey(ignore: true)
  _$$ProductBodyImplCopyWith<_$ProductBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

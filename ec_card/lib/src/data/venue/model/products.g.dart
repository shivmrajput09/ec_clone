// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductBodyImpl _$$ProductBodyImplFromJson(Map<String, dynamic> json) =>
    _$ProductBodyImpl(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      orgProductId: json['orgProductId'] as String? ?? '',
    );

Map<String, dynamic> _$$ProductBodyImplToJson(_$ProductBodyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'orgProductId': instance.orgProductId,
    };

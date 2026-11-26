// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VenueBodyImpl _$$VenueBodyImplFromJson(Map<String, dynamic> json) =>
    _$VenueBodyImpl(
      storeName: json['storeName'] as String? ?? '',
      storeNumber: json['storeNumber'] as String? ?? '',
      street: json['street'] as String? ?? '',
      address: json['address'] as String? ?? '',
      postalCode: json['postalCode'] as String? ?? '',
      areaCode: json['areaCode'] as String? ?? '',
      city: json['city'] as String? ?? '',
      notes: json['notes'] as String? ?? '',
      hideOnMap: json['hideOnMap'] as bool? ?? false,
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0.0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0.0,
      storeId: json['storeId'] as String? ?? '',
      storeSearch: json['storeSearch'] as String? ?? '',
      storeDisplayAddress: json['storeDisplayAddress'] as String? ?? '',
      distance: json['distance'] as String? ?? '',
    );

Map<String, dynamic> _$$VenueBodyImplToJson(_$VenueBodyImpl instance) =>
    <String, dynamic>{
      'storeName': instance.storeName,
      'storeNumber': instance.storeNumber,
      'street': instance.street,
      'address': instance.address,
      'postalCode': instance.postalCode,
      'areaCode': instance.areaCode,
      'city': instance.city,
      'notes': instance.notes,
      'hideOnMap': instance.hideOnMap,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'storeId': instance.storeId,
      'storeSearch': instance.storeSearch,
      'storeDisplayAddress': instance.storeDisplayAddress,
      'distance': instance.distance,
    };

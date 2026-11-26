// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'venue.g.dart';

part 'venue.freezed.dart';

@freezed
class VenueBody with _$VenueBody {
  const factory VenueBody({
    @JsonKey(name: 'storeName') @Default('') String storeName,
    @JsonKey(name: 'storeNumber') @Default('') String storeNumber,
    @JsonKey(name: 'street') @Default('') String street,
    @JsonKey(name: 'address') @Default('') String address,
    @JsonKey(name: 'postalCode') @Default('') String postalCode,
    @JsonKey(name: 'areaCode') @Default('') String areaCode,
    @JsonKey(name: 'city') @Default('') String city,
    @JsonKey(name: 'notes') @Default('') String notes,
    @JsonKey(name: 'hideOnMap') @Default(false) bool hideOnMap,
    @JsonKey(name: 'latitude') @Default(0.0) double latitude,
    @JsonKey(name: 'longitude') @Default(0.0) double longitude,
    @JsonKey(name: 'storeId') @Default('') String storeId,
    @JsonKey(name: 'storeSearch') @Default('') String storeSearch,
    @JsonKey(name: 'storeDisplayAddress')
    @Default('')
        String storeDisplayAddress,
    @JsonKey(name: 'distance') @Default('') String distance,
  }) = _VenueBody;

  factory VenueBody.fromJson(dynamic json) => _$VenueBodyFromJson(json);
}

VenueBody venueBodyFromJson(String str) => VenueBody.fromJson(jsonDecode(str));

String venueBodyToJson(VenueBody data) => json.encode(data.toJson());

VenueBody convertIVTSResponseToVenueBody(var ivts) {
  return VenueBody(
      storeName: ivts['name'],
      storeNumber: ivts['number'],
      street: ivts['street'],
      address: ivts['address'],
      postalCode: ivts['postalCode'],
      areaCode: ivts['areaCode'],
      city: ivts['city'],
      notes: ivts['notes'],
      hideOnMap: ivts['hideOnMap'],
      latitude: ivts['latitude'].toDouble(),
      longitude: ivts['longitude'].toDouble(),
      storeDisplayAddress: ivts['storeDisplayAddress'],
      storeSearch: ivts['storeSearch'],
      distance: ivts['distance']);
}

convertIVTSlistTOVenueList(Iterable<dynamic> list) {
  List<VenueBody> resultList = [];
  Future.forEach(list, (element) {
    resultList.add(convertIVTSResponseToVenueBody(element));
  });

  return resultList;
}

List<VenueBody> convertIntoListOfVenueBody(Iterable<dynamic> list) {
  List<VenueBody> resultList = [];
  Future.forEach(list, (element) {
    resultList.add(VenueBody.fromJson(element));
  });

  return resultList;
}

import 'package:ec_card_app/src/data/venue/model/venue.dart';
import 'package:ec_card_app/src/google_map_clustering/cluster_item.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class VenueEntity with ClusterItem {
  String? storeName;
  String? storeNumber;
  String? street;
  String? address;
  String? postalCode;
  String? areaCode;
  String? city;
  String? notes;
  bool? hideOnMap;
  String? storeId;
  String? storeDisplayAddress;
  String? distance;
  String? storeSearch;
  LatLng? latLng;

  VenueEntity({
    this.storeName,
    this.storeNumber,
    this.street,
    this.address,
    this.postalCode,
    this.areaCode,
    this.city,
    this.notes,
    this.hideOnMap,
    this.storeId,
    this.storeDisplayAddress,
    this.distance,
    this.storeSearch,
    this.latLng,
  });

  @override
  LatLng get location => latLng!;

  factory VenueEntity.convertFromVenueBody(VenueBody venue) => VenueEntity(
      storeName: venue.storeName,
      storeNumber: venue.storeNumber,
      street: venue.street,
      address: venue.address,
      postalCode: venue.postalCode,
      areaCode: venue.areaCode,
      city: venue.city,
      notes: venue.notes,
      hideOnMap: venue.hideOnMap,
      storeId: venue.storeId,
      storeDisplayAddress: venue.storeDisplayAddress,
      distance: venue.distance,
      storeSearch: venue.storeSearch,
      latLng: LatLng(venue.latitude, venue.longitude));
}

List<VenueEntity> convertIntoListOfVenueEntity(List<VenueBody> venueBodyList) {
  List<VenueEntity> resultList = [];
  for (VenueBody venue in venueBodyList) {
    resultList.add(VenueEntity.convertFromVenueBody(venue));
  }

  return resultList;
}

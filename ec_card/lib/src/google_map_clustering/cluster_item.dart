import 'package:ec_card_app/src/google_map_clustering/cluster_manager.dart'
    as gmc;
import 'package:ec_card_app/src/google_map_clustering/geohash.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

abstract mixin class ClusterItem {
  LatLng get location;

  String? _geohash;
  String get geohash => _geohash ??=
      Geohash.encode(location, codeLength: gmc.ClusterManager.precision);
}

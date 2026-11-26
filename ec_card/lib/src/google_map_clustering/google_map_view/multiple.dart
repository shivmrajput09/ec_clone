import 'dart:async';
import 'dart:ui';

// import 'package:custom_info_window/custom_info_window.dart';
import 'package:ec_card_app/src/data/venue/model/entity/venue_entity.dart';
import 'package:ec_card_app/src/google_map_clustering/cluster.dart' as cluster;
import 'package:ec_card_app/src/google_map_clustering/cluster_manager.dart'
    as gmc;
import 'package:ec_card_app/src/presentation/venue/widgets/marker_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../presentation/core/info_window.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

// Clustering maps

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);
  // final List<VenueEntity> items;
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();
  late gmc.ClusterManager _manager;
  late gmc.ClusterManager _manager2;

  final Completer<GoogleMapController> _controller = Completer();

  Set<Marker> markers = {};
  Set<Marker> markers2 = {};

  final CameraPosition _parisCameraPosition =
      const CameraPosition(target: LatLng(48.856613, 2.352222), zoom: 17.0);

  List<VenueEntity> items = [
    for (int i = 0; i < 30; i++)
      VenueEntity(
          storeName: 'Restaurant $i',
          latLng: LatLng(48.858265 - i * 0.001, 2.350107 + i * 0.001)),
  ];

  List<VenueEntity> items2 = [
    for (int i = 0; i < 50; i++)
      VenueEntity(
          storeName: 'Place $i',
          latLng: LatLng(48.848200 + i * 0.001, 2.319124 + i * 0.001)),
  ];

  @override
  void initState() {
    _manager = gmc.ClusterManager<VenueEntity>(items, _updateMarkers,
        markerBuilder: _getMarkerBuilder(Colors.red));

    _manager2 = gmc.ClusterManager<VenueEntity>(items2, _updateMarkers2,
        markerBuilder: _getMarkerBuilder(Colors.blue));
    super.initState();
  }

  void _updateMarkers(Set<Marker> markers) {
    setState(() {
      this.markers = markers;
    });
  }

  void _updateMarkers2(Set<Marker> markers) {
    setState(() {
      markers2 = markers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            zoomControlsEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: _parisCameraPosition,
            markers: markers..addAll(markers2),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              _manager.setMapId(controller.mapId);
              _manager2.setMapId(controller.mapId);
              _customInfoWindowController.googleMapController = controller;
            },
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();

              _manager.onCameraMove(position);
              _manager2.onCameraMove(position);
            },
            onCameraIdle: () {
              _manager.updateMap();
              _manager2.updateMap();
            },
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            // height: 120,
            width: MediaQuery.of(context).size.width - 100,
            offset: 25,
          ),
        ],
      ),
    );
  }

  Future<Marker> Function(cluster.Cluster<VenueEntity>) _getMarkerBuilder(
          Color color) =>
      (cluster) async {
        return Marker(
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          onTap: () {
            if (!cluster.isMultiple) {
              appLog(cluster.items.first.storeName);
              appLog(cluster.count);
              _customInfoWindowController.addInfoWindow!(
                MarkerInfoWindow(venue: cluster.items.first),
                cluster.items.first.location,
              );
            }
          },
          icon: await _getMarkerBitmap(cluster.isMultiple, color,
              text: cluster.isMultiple ? cluster.count.toString() : null),
        );
      };

  Future<BitmapDescriptor> _getMarkerBitmap(bool multipleMarkers, Color color,
      {String? text}) async {
    int size = 100;

    final PictureRecorder pictureRecorder = PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint1 = Paint()..color = color;
    final Paint paint2 = Paint()..color = Colors.white;

    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.0, paint1);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.2, paint2);
    canvas.drawCircle(Offset(size / 2, size / 2), size / 2.8, paint1);

    if (text != null) {
      TextPainter painter = TextPainter(textDirection: TextDirection.ltr);
      painter.text = TextSpan(
        text: text,
        style: TextStyle(
            fontSize: size / 3,
            color: Colors.white,
            fontWeight: FontWeight.normal),
      );
      painter.layout();
      painter.paint(
        canvas,
        Offset(size / 2 - painter.width / 2, size / 2 - painter.height / 2),
      );

      final img = await pictureRecorder.endRecording().toImage(size, size);
      final data =
          await img.toByteData(format: ImageByteFormat.png) as ByteData;

      return BitmapDescriptor.fromBytes(data.buffer.asUint8List());
    } else {
      return BitmapDescriptor.fromAssetImage(
          const ImageConfiguration(size: Size(75, 75)),
          'assets/images/pin.png');
    }
  }
}

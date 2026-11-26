import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/venue/map_controller_handle.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui';

// import 'package:custom_info_window/custom_info_window.dart';
import 'package:ec_card_app/src/data/venue/model/entity/venue_entity.dart';
import 'package:ec_card_app/src/google_map_clustering/cluster.dart' as cluster;
import 'package:ec_card_app/src/google_map_clustering/cluster_manager.dart'
    as gmc;
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/venue/widgets/marker_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/info_window.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class MapView extends StatefulWidget {
  MapView({
    Key? key,
    this.mapCompleter,
    required this.venueList,
    required this.ivtsList,
    required this.cameraPosition,
    this.locationMarker,
    this.latlng,
  }) : super(key: key);

  final List<VenueEntity> venueList;
  final List<VenueEntity> ivtsList;
  final CameraPosition cameraPosition;
  MapControllerHandle? mapCompleter;
  Set<Marker>? locationMarker;
  LatLng? latlng;

  @override
  _MapViewState createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

  late gmc.ClusterManager _venueManager;
  late gmc.ClusterManager _ivtsManager;
  Set<Marker> venueMarkers = {};
  Set<Marker> ivtsMarkers = {};

  late CameraPosition currentCameraPosition;

  @override
  void initState() {
    currentCameraPosition =
        CameraPosition(target: widget.cameraPosition.target);
    _venueManager = gmc.ClusterManager<VenueEntity>(
      widget.venueList,
      _updateVenueMarkers,
      markerBuilder: _getMarkerBuilder(Colors.cyan, "venue"),
    );

    _ivtsManager = gmc.ClusterManager<VenueEntity>(
        widget.ivtsList, _updateIVTSMarkers,
        markerBuilder: _getMarkerBuilder(Colors.orange, "ivts"));

    super.initState();
  }

  void _updateVenueMarkers(Set<Marker> markers) {
    setState(() {
      venueMarkers = markers;
    });
  }

  void _updateIVTSMarkers(Set<Marker> markers) {
    setState(() {
      ivtsMarkers = markers;
    });
  }

  Future<Marker> Function(cluster.Cluster<VenueEntity>) _getMarkerBuilder(
          Color color, String calledFrom) =>
      (cluster) async {
        return Marker(
          markerId: MarkerId(cluster.getId()),
          position: cluster.location,
          onTap: () async {
            if (!cluster.isMultiple) {
              // final c = await widget.mapCompleter?.controller;
              // c?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
              //     target: cluster.items.first.latLng!, zoom: 16)));
              _customInfoWindowController.addInfoWindow!(
                MarkerInfoWindow(venue: cluster.items.first),
                cluster.items.first.location,
              );
            } else {
              final c = await widget.mapCompleter?.controller;
              c?.animateCamera(CameraUpdate.newLatLngBounds(
                  boundsFromLatLngList(
                      cluster.items.map((e) => e.location).toList()),
                  50));
            }
          },
          icon: await _getMarkerBitmap(
            cluster.isMultiple,
            color,
            text: cluster.isMultiple ? cluster.count.toString() : null,
            calledFrom: calledFrom,
          ),
        );
      };

  double calculateNextZoomLevel(cluster.Cluster<VenueEntity> cluster) {
    double zoom = currentCameraPosition.zoom + 2;

    return zoom;
  }

  LatLngBounds boundsFromLatLngList(List<LatLng> list) {
    double? x0, x1, y0, y1;
    for (LatLng latLng in list) {
      if (x0 == null || x1 == null || y0 == null || y1 == null) {
        x0 = x1 = latLng.latitude;
        y0 = y1 = latLng.longitude;
      } else {
        if (latLng.latitude > x1) x1 = latLng.latitude;
        if (latLng.latitude < x0) x0 = latLng.latitude;
        if (latLng.longitude > y1) y1 = latLng.longitude;
        if (latLng.longitude < y0) y0 = latLng.longitude;
      }
    }

    return LatLngBounds(
        northeast: LatLng(x1!, y1!), southwest: LatLng(x0!, y0!));
  }

  Future<BitmapDescriptor> _getMarkerBitmap(bool multipleMarkers, Color color,
      {String? text, String? calledFrom}) async {
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
      return calledFrom == 'ivts'
          ? await BitmapDescriptor.fromAssetImage(
              ImageConfiguration(
                bundle: rootBundle,
                size: const Size(75, 75),
              ),
              Platform.isIOS
                  ? 'assets/images/android_kiosk.png'
                  : 'assets/images/ios_kiosk.png',
            )
          : await BitmapDescriptor.fromAssetImage(
              ImageConfiguration(
                bundle: rootBundle,
                size: const Size(75, 75),
              ),
              Platform.isIOS
                  ? 'assets/images/android_stores.png'
                  : 'assets/images/ios_stores.png',
            );
      //  .fromAssetImage(
      //   const ImageConfiguration(size: Size(150, 150)),
      //   calledFrom == "ivts"
      //       ? "assets/images/vendingMachine.png"
      //       : 'assets/images/pin.png',
      // );
    }
  }

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // The map platform view is focusable but exposes no name, so a screen
        // reader lands on a large silent region covering most of the screen.
        // Name it after the content it shows. The venue list below the map
        // remains the accessible route to the same information — panning a
        // map is not a usable interaction with a screen reader.
        //
        // The map itself is a native view the plugin never names, so it still
        // surfaced as a separate clickable element with no name beneath this
        // label. Excluding the subtree keeps the named region and removes it.
        Semantics(
          container: true,
          label: AppLocalizations.of(context)!.venues,
          excludeSemantics: true,
          child: GoogleMap(
            zoomControlsEnabled: false,
            initialCameraPosition: widget.cameraPosition,
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            mapToolbarEnabled: false,
            myLocationEnabled: true,
            markers: venueMarkers
              ..addAll(widget.locationMarker!)
              ..addAll(ivtsMarkers),
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              if (position.zoom != currentCameraPosition.zoom) {
                _customInfoWindowController.hideInfoWindow!();
              }
              _customInfoWindowController.onCameraMove!();

              _venueManager.onCameraMove(position);
              _ivtsManager.onCameraMove(position);

              setState(() {
                currentCameraPosition = position;
              });

              // appLog(position.zoom);
            },
            onCameraIdle: () {
              _venueManager.updateMap();
              _ivtsManager.updateMap();
            },
            // onMapCreated: (GoogleMapController controller) async {
            //   widget.mapCompleter?.complete(controller);
            //   _venueManager.setMapId(controller.mapId);
            //   _ivtsManager.setMapId(controller.mapId);
            //   _customInfoWindowController.googleMapController = controller;
            // },
            onMapCreated: (GoogleMapController controller) async {
              // Attach on every creation: the map is rebuilt whenever venue or
              // IVTS loading toggles, and callers must reach the live controller
              // rather than one belonging to a disposed map.
              widget.mapCompleter?.attach(controller);

              // Proceed with other logic
              _venueManager.setMapId(controller.mapId);
              _ivtsManager.setMapId(controller.mapId);
              _customInfoWindowController.googleMapController = controller;
            },
          ),
        ),
        Platform.isIOS
            ? Positioned(
                top: 20,
                right: 10,
                child: InkWell(
                  onTap: () async {
                    final position = await Geolocator.getCurrentPosition();

                    final c = await widget.mapCompleter?.controller;
                    c?.animateCamera(CameraUpdate.newCameraPosition(
                        CameraPosition(
                            target:
                                LatLng(position.latitude, position.longitude),
                            zoom: 17)));
                  },
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: primaryColorLight,
                    child: CircleAvatar(
                      maxRadius: 22,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.my_location_outlined,
                        color: primaryColorLight,
                        size: 36,
                      ),
                    ),
                  ),
                ))
            : const SizedBox(
                width: 0,
              ),
        CustomInfoWindow(
          controller: _customInfoWindowController,
          // height: 140.h,

          width: MediaQuery.of(context).size.width - 40.w,
          offset: 25,
        ),
      ],
    );
  }
}

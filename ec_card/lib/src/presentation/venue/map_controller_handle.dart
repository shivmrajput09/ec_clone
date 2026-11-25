// lib/src/presentation/venue/map_controller_handle.dart

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapControllerHandle {
  final Completer<GoogleMapController> _controller = Completer();

  Completer<GoogleMapController> get completer => _controller;

  Future<void> animateTo(LatLng target, {double zoom = 15.0}) async {
    final controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: target, zoom: zoom),
      ),
    );
  }
}
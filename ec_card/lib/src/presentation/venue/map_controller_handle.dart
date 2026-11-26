import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

/// Holds the map controller for the venue screen.
///
/// The screen used to pass a bare [Completer], but a Completer can only be
/// completed once, so it kept handing out the controller of the very first
/// GoogleMap ever created. The map is rebuilt whenever venue/IVTS loading
/// toggles, and every rebuild produces a new controller - leaving callers
/// animating a controller whose map no longer exists, which is why tapping a
/// store card stopped moving the map.
///
/// [attach] is called on every `onMapCreated`, so [controller] always resolves
/// to the live one. The internal Completer only serves the first caller that
/// asks before any map has been created.
class MapControllerHandle {
  final Completer<GoogleMapController> _first = Completer();
  GoogleMapController? _latest;

  void attach(GoogleMapController controller) {
    _latest = controller;
    if (!_first.isCompleted) {
      _first.complete(controller);
    }
  }

  /// The live controller, awaiting the first map if none exists yet.
  Future<GoogleMapController> get controller async =>
      _latest ?? await _first.future;
}

import 'dart:math' as math;

import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart';

/// Extension methods on [Position];
extension PositionExt on Position {
  /// Convert [Position] to [LatLng].
  LatLng toLatLng() => LatLng(lat.toDouble(), lng.toDouble());
}

/// Extension methods on [LatLng];
extension LatLngExt on LatLng {
  /// Convert [LatLng] to [Position].
  Position toPosition() => Position(longitude, latitude);
}

/// Extension methods on [MapController];
extension MapControllerExt on MapController {
  /// Convert [MapController] to [fm.MapController].
  fm.MapController toFlutterMapController() => fm.MapController();
}

/// Extension methods on [MapCamera];
extension MapCameraExt on MapCamera {
  /// Convert [MapCamera] to [fm.MapCamera].
  fm.MapCamera toFlutterMapCamera(BoxConstraints constraints) {
    return fm.MapCamera(
      zoom: zoom,
      center: center.toLatLng(),
      rotation: bearing,
      crs: const fm.Epsg3857(),
      nonRotatedSize: math.Point(
        constraints.maxWidth,
        constraints.maxHeight,
      ),
    );
  }
}

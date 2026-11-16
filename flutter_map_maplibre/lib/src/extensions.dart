import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart';

/// Extension methods on [Geographic];
extension PositionExt on Geographic {
  /// Convert [Geographic] to [LatLng].
  LatLng toLatLng() => LatLng(lat, lon);
}

/// Extension methods on [LatLng];
extension LatLngExt on LatLng {
  /// Convert [LatLng] to [Geographic].
  Geographic toPosition() => Geographic(lon: longitude, lat: latitude);
}

/// Extension methods on [CameraPosition].
extension CameraPositionExt on CameraPosition {
  /// Convert [CameraPosition] to [fm.MapCamera] for a map of the size of
  /// [constraints].
  ///
  /// MapLibre uses 512px tiles where `flutter_map` uses 256px tiles, so the
  /// `flutter_map` zoom is one level higher, and the MapLibre bearing turns
  /// the map the other way. [minZoom] and [maxZoom] are `flutter_map` zoom
  /// levels.
  fm.MapCamera toFlutterMapCamera(
    BoxConstraints constraints, {
    double? minZoom,
    double? maxZoom,
  }) {
    return fm.MapCamera(
      zoom: zoom + 1,
      center: center.toLatLng(),
      rotation: -bearing,
      crs: const fm.Epsg3857(),
      nonRotatedSize: Size(constraints.maxWidth, constraints.maxHeight),
      minZoom: minZoom,
      maxZoom: maxZoom,
    );
  }
}

/// Extension methods on [fm.MapCamera].
extension FlutterMapCameraExt on fm.MapCamera {
  /// Convert [fm.MapCamera] to the [CameraUpdate] that shows the same map in
  /// MapLibre, see [CameraPositionExt.toFlutterMapCamera].
  CameraUpdate toCameraUpdate() => CameraUpdate.position(
    center: center.toPosition(),
    zoom: zoom - 1,
    bearing: -rotation,
  );
}

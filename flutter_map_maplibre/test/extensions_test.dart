import 'package:flutter/rendering.dart';
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart';

void main() {
  test('LatLng <-> Geographic', () {
    const latLng = LatLng(12.5, -45.25);
    final position = latLng.toPosition();
    expect(position.lat, 12.5);
    expect(position.lon, -45.25);
    expect(position.toLatLng(), latLng);
  });

  test('MapCamera to flutter_map camera', () {
    const camera = MapCamera(
      center: Geographic(lon: 10, lat: 20),
      zoom: 3,
      bearing: 30,
      pitch: 0,
    );
    final fmCamera = camera.toFlutterMapCamera(
      const BoxConstraints.tightFor(width: 400, height: 300),
    );
    // MapLibre zoom levels are one level lower than flutter_map zoom levels.
    expect(fmCamera.zoom, 4);
    expect(fmCamera.rotation, -30);
    expect(fmCamera.center, const LatLng(20, 10));
    expect(fmCamera.nonRotatedSize, const Size(400, 300));
  });
}

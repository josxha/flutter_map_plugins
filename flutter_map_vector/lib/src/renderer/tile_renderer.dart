import 'dart:io';

import 'package:vector_tile/vector_tile.dart';

class TileRenderer {
  const TileRenderer();
}

Future<void> main() async {
  final tileData = await File('../data/sample-12-3262-1923.pbf').readAsBytes();
  final tile = VectorTile.fromBytes(bytes: tileData);
  final layer =
      tile.layers.firstWhere((layer) => layer.name == 'transportation');

  for (final feature in layer.features) {
    // Geometry will be decode on-demand to avoid redundant calculating
    feature.decodeGeometry();

    // Each GeometryType will have different geometry data format
    // So we must explicit check GeometryType and specific generic type here
    if (feature.geometryType == GeometryType.Point) {
      final geojson = feature.toGeoJson<GeoJsonPoint>(x: 3262, y: 1923, z: 12);

      print(geojson?.properties);
      print(geojson?.geometry?.coordinates);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:mbtiles/mbtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_map_tiles_mbtiles/vector_map_tiles_mbtiles.dart';
import 'package:vector_tile_renderer/vector_tile_renderer.dart';

yclass TestApp extends StatelessWidget {
  const TestApp({required this.mbTiles, super.key});
  final MbTiles mbTiles;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlutterMap(
          options: const MapOptions(
            initialZoom: 0,
            initialCenter: LatLng(0, 0),
          ),
          children: [
            VectorTileLayer(
              tileProviders: TileProviders({
                'openmaptiles': MbTilesVectorTileProvider(mbtiles: mbTiles),
              }),
              theme: ProvidedThemes.lightTheme(),
            ),
          ],
        ),
      ),
    );
  }
}

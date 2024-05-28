import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/src/mbtiles_tile_provider.dart';
import 'package:latlong2/latlong.dart';
import 'package:mbtiles/mbtiles.dart';

// ignore_for_file: diagnostic_describe_all_properties

class TestApp extends StatelessWidget {
  const TestApp({required this.mbtiles, super.key});

  final MbTiles mbtiles;

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
            TileLayer(
              tileProvider: MbTilesTileProvider(mbtiles: mbtiles),
            ),
          ],
        ),
      ),
    );
  }
}

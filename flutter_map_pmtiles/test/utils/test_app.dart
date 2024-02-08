import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_pmtiles/flutter_map_pmtiles.dart';
import 'package:latlong2/latlong.dart';
import 'package:pmtiles/pmtiles.dart';

// ignore_for_file: diagnostic_describe_all_properties

class TestApp extends StatelessWidget {
  final PmTilesArchive pmTiles;

  const TestApp({super.key, required this.pmTiles});

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
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              tileProvider: PmTilesTileProvider.fromArchive(pmTiles),
            ),
          ],
        ),
      ),
    );
  }
}

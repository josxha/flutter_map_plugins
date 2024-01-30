import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/flutter_map_mbtiles.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapMbTilesPage extends StatefulWidget {
  const FlutterMapMbTilesPage({super.key});

  @override
  State<FlutterMapMbTilesPage> createState() => _FlutterMapMbTilesPageState();
}

class _FlutterMapMbTilesPageState extends State<FlutterMapMbTilesPage> {
  final mbtiles = MBTiles(
    mbtilesPath: 'assets/mbtiles/countries-raster.mbtiles',
  );

  @override
  Widget build(BuildContext context) {
    final metadata = mbtiles.getMetadata();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_mbtiles'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'MBTiles Name: ${metadata.name}, '
                  'Format: ${metadata.format}',
            ),
          ),
          Expanded(
            child: FlutterMap(
              options: const MapOptions(
                minZoom: 0,
                maxZoom: 6,
                initialZoom: 2,
                initialCenter: LatLng(49, 9),
              ),
              children: [
                TileLayer(
                  tileProvider: MbTilesTilesProvider(
                    mbtiles: mbtiles,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    mbtiles.dispose();
    super.dispose();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/flutter_map_mbtiles.dart';
import 'package:latlong2/latlong.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_map_tiles_mbtiles/vector_map_tiles_pmtiles.dart';
import 'package:vector_tile_renderer/vector_tile_renderer.dart';

class VectorMapTilesMbTilesPage extends StatefulWidget {
  const VectorMapTilesMbTilesPage({super.key});

  @override
  State<VectorMapTilesMbTilesPage> createState() =>
      _VectorMapTilesMbTilesPageState();
}

class _VectorMapTilesMbTilesPageState extends State<VectorMapTilesMbTilesPage> {
  final mbtiles = MBTiles(
    mbtilesPath: 'assets/mbtiles/countries-vector.mbtiles',
    isPBF: true, // optional, but small performance benefit
  );

  @override
  Widget build(BuildContext context) {
    final metadata = mbtiles.getMetadata();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('vector_map_tiles_mbtiles'),
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
                VectorTileLayer(
                  theme: ProvidedThemes.lightTheme(),
                  tileProviders: TileProviders({
                    'openmaptiles': MbTilesVectorTileProvider(
                      maxZoom: 6,
                      minZoom: 1,
                      mbtiles: mbtiles,
                    ),
                  }),
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

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/flutter_map_mbtiles.dart';
import 'package:flutter_map_plugins_example/utils.dart';
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
  final Future<MBTiles> _futureMbtiles = _initMbtiles();
  MBTiles? _mbtiles;

  static Future<MBTiles> _initMbtiles() async {
    // This function copies an asset file from the asset bundle to the temporary
    // app directory.
    // It is not recommended to use this in production. Instead download your
    // mbtiles file from a web server or object storage.
    final file = await copyAssetToFile(
      'assets/mbtiles/countries-vector.mbtiles',
    );
    return MBTiles(mbtilesPath: file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('vector_map_tiles_mbtiles'),
      ),
      body: FutureBuilder<MBTiles>(
        future: _futureMbtiles,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            _mbtiles = snapshot.data;
            final metadata = _mbtiles!.getMetadata();
            return Column(
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
                      minZoom: 1,
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
                            mbtiles: _mbtiles!,
                          ),
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  @override
  void dispose() {
    // close the open database connection
    _mbtiles?.dispose();
    super.dispose();
  }
}

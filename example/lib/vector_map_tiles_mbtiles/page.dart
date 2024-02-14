import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_plugins_example/common/utils.dart';
import 'package:latlong2/latlong.dart';
import 'package:mbtiles/mbtiles.dart';
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
  final Future<MbTiles> _futureMbtiles = _initMbTiles();
  MbTiles? _mbtiles;

  final logger = kDebugMode ? const Logger.console() : null;
  late final _theme = ProvidedThemes.lightTheme(logger: logger);

  static Future<MbTiles> _initMbTiles() async {
    // This function copies an asset file from the asset bundle to the temporary
    // app directory.
    // It is not recommended to use this in production. Instead download your
    // mbtiles file from a web server or object storage.
    final file = await copyAssetToFile(
      'assets/mbtiles/malta-vector.mbtiles',
    );
    return MbTiles(mbtilesPath: file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('vector_map_tiles_mbtiles'),
      ),
      body: FutureBuilder<MbTiles>(
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
                    options: MapOptions(
                      minZoom: 8, //metadata.minZoom?.toDouble() ?? 0,
                      maxZoom: 14, //metadata.maxZoom?.toDouble() ?? 13,
                      initialZoom: 11, // metadata.defaultZoom ?? 8,
                      initialCenter:
                          metadata.defaultCenter ?? const LatLng(0, 0),
                    ),
                    children: [
                      VectorTileLayer(
                        theme: _theme,
                        tileProviders: TileProviders({
                          'openmaptiles': MbTilesVectorTileProvider(
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
            debugPrint(snapshot.error.toString());
            debugPrintStack(stackTrace: snapshot.stackTrace);
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

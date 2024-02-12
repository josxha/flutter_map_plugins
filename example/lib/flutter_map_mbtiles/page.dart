import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/flutter_map_mbtiles.dart';
import 'package:flutter_map_plugins_example/common/utils.dart';
import 'package:latlong2/latlong.dart';
import 'package:mbtiles/mbtiles.dart';

class FlutterMapMbTilesPage extends StatefulWidget {
  const FlutterMapMbTilesPage({super.key});

  @override
  State<FlutterMapMbTilesPage> createState() => _FlutterMapMbTilesPageState();
}

class _FlutterMapMbTilesPageState extends State<FlutterMapMbTilesPage> {
  final Future<MbTiles> _futureMbtiles = _initMbtiles();
  MbTiles? _mbtiles;

  static Future<MbTiles> _initMbtiles() async {
    // This function copies an asset file from the asset bundle to the temporary
    // app directory.
    // It is not recommended to use this in production. Instead download your
    // mbtiles file from a web server or object storage.
    final file = await copyAssetToFile(
      'assets/mbtiles/countries-raster.mbtiles',
    );
    return MbTiles(mbtilesPath: file.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_mbtiles'),
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
                    options: const MapOptions(
                      minZoom: 0,
                      maxZoom: 6,
                      initialZoom: 2,
                      initialCenter: LatLng(49, 9),
                    ),
                    children: [
                      TileLayer(
                        tileProvider: MbTilesTileProvider(
                          mbtiles: _mbtiles!,
                          silenceTileNotFound: true,
                        ),
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

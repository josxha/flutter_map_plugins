/*
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_plugins_example/common/attribution_widget.dart';
import 'package:latlong2/latlong.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_map_tiles_pmtiles/vector_map_tiles_pmtiles.dart';
import 'package:vector_tile_renderer/vector_tile_renderer.dart' as vtr;

/// TODO: use your own tile source https://docs.protomaps.com/pmtiles/cloud-storage
/// This can be a hosted file or local file in your file system,
/// However, flutter assets are not supported.
const String tileSource =
    'https://raw.githubusercontent.com/protomaps/PMTiles/main/spec/v3/protomaps(vector)ODbL_firenze.pmtiles';

class VectorMapTilesPmTilesPage extends StatelessWidget {
  /// The theme specifies the look of the rendered map.
  ///
  /// Note: Styles from Mapbox, OpenMapTiles and others and not compatible
  /// with Protomaps styles.
  final vtr.Theme mapTheme = ProtomapsThemes.light(
    logger: kDebugMode ? const vtr.Logger.console() : null,
  );

  final _futureTileProvider = PmTilesVectorTileProvider.fromSource(tileSource);

  VectorMapTilesPmTilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('vector_map_tiles_pmtiles'),
      ),
      body: FutureBuilder<PmTilesVectorTileProvider>(
        future: _futureTileProvider,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final tileProvider = snapshot.data!;
            return FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(43.787942, 11.237517), // firenze
                maxZoom: 18,
                minZoom: 0,
              ),
              children: [
                VectorTileLayer(
                  // disable the file cache when you change the PMTiles source
                  fileCacheTtl: Duration.zero,
                  theme: mapTheme,
                  tileProviders: TileProviders({
                    'protomaps': tileProvider,
                  }),
                ),
                const OsmAttributionWidget(),
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
}
*/

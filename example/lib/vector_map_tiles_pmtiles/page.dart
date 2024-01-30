import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_map_tiles_mbtiles/vector_map_tiles_pmtiles.dart';
import 'package:vector_map_tiles_pmtiles/vector_map_tiles_pmtiles.dart';
import 'package:vector_tile_renderer/vector_tile_renderer.dart';

// It could be that the hosted PMTiles file is no longer available.
// Check https://maps.protomaps.com/builds/ to get an up to date build.
// TODO: use your own tile source https://docs.protomaps.com/pmtiles/cloud-storage
const tileSource = 'https://build.protomaps.com/20240128.pmtiles';

class VectorMapTilesPmTilesPage extends StatelessWidget {
  final Future<PmTilesVectorTileProvider> _futureTileProvider =
      PmTilesVectorTileProvider.fromSource(tileSource);

  VectorMapTilesPmTilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('vector_map_tiles_pmtiles'),
      ),
      body: FutureBuilder<MbTilesVectorTileProvider>(
        future: _futureTileProvider,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final tileProvider = snapshot.data!;
            return FlutterMap(
              options: const MapOptions(
                initialZoom: 1,
                initialCenter: LatLng(0, 0),
                maxZoom: 3.49,
              ),
              children: [
                VectorTileLayer(
                  theme: ProvidedThemes.lightTheme(),
                  tileProviders: TileProviders({
                    'openmaptiles': tileProvider,
                  }),
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
}

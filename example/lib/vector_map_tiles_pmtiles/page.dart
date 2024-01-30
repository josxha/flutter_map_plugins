import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart' as vmt;
import 'package:vector_map_tiles_pmtiles/vector_map_tiles.dart';
import 'package:vector_tile_renderer/vector_tile_renderer.dart' as vtr;

// TODO: use your own tile source https://docs.protomaps.com/pmtiles/cloud-storage
const tileSource =
    'https://build.protomaps.com/20240128.pmtiles';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Future<PmTilesVectorTileProvider> _futureTileProvider =
      PmTilesVectorTileProvider.fromSource(tileSource);

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
                initialZoom: 1,
                initialCenter: LatLng(0, 0),
                maxZoom: 3.49,
              ),
              children: [
                vmt.VectorTileLayer(
                  theme: vtr.ProvidedThemes.lightTheme(),
                  tileProviders: vmt.TileProviders({
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

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_plugins_example/common/attribution_widget.dart';
import 'package:flutter_map_pmtiles/flutter_map_pmtiles.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapPmTilesPage extends StatefulWidget {
  const FlutterMapPmTilesPage({super.key});

  @override
  State<FlutterMapPmTilesPage> createState() => _FlutterMapPmTilesPageState();
}

// TODO: use your own tile source https://docs.protomaps.com/pmtiles/cloud-storage
/// This can be a hosted file or local file in your file system,
/// However, flutter assets are not supported.
const String tileSource =
    'https://raw.githubusercontent.com/protomaps/PMTiles/main/spec/v3/stamen_toner(raster)CC-BY%2BODbL_z3.pmtiles';

class _FlutterMapPmTilesPageState extends State<FlutterMapPmTilesPage> {
  final _futureTileProvider = PmTilesTileProvider.fromSource(tileSource);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_pmtiles'),
      ),
      body: FutureBuilder<PmTilesTileProvider>(
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
                TileLayer(tileProvider: tileProvider),
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

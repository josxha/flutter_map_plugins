import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_plugins_example/flutter_map_vector/config.dart';
import 'package:flutter_map_vector/flutter_map_vector.dart';

class FlutterMapVectorPage extends StatelessWidget {
  const FlutterMapVectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('vector_map_vector'),
      ),
      body: FlutterMap(
        options: const MapOptions(),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          VectorTileLayer(
            style: VectorTheme.osmBright,
            providers: {
              'openmaptiles': NetworkVectorTileProvider(
                urlTemplate:
                    'https://tiles.stadiamaps.com/data/openmaptiles/{z}/{x}/{y}.pbf?api_key=$stadiamapsKey',
              ),
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_scalebar/flutter_map_scalebar.dart';

class FlutterMapScalebar extends StatelessWidget {
  const FlutterMapScalebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_scalebar'),
      ),
      body: FlutterMap(
        options: const MapOptions(),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          // place the ScalebarLayer as the last list item,
          // to have it on top of the map
          const Scalebar(),
        ],
      ),
    );
  }
}
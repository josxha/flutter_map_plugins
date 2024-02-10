import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_compass/flutter_map_compass.dart';
import 'package:flutter_map_plugins_example/common/attribution_widget.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapCompassPage extends StatefulWidget {
  const FlutterMapCompassPage({super.key});

  @override
  State<FlutterMapCompassPage> createState() => _FlutterMapCompassPageState();
}

class _FlutterMapCompassPageState extends State<FlutterMapCompassPage> {
  final _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_compass'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: 'rotateLeft',
            label: const Text('Rotate left'),
            onPressed: () => rotateMap(-90),
            icon: const Icon(Icons.rotate_left),
          ),
          const SizedBox(height: 16),
          FloatingActionButton.extended(
            heroTag: 'rotateRight',
            label: const Text('Rotate right'),
            onPressed: () => rotateMap(90),
            icon: const Icon(Icons.rotate_right),
          ),
          const SizedBox(height: 24),
        ],
      ),
      body: FlutterMap(
        mapController: _mapController,
        options: const MapOptions(
          initialZoom: 5,
          initialCenter: LatLng(48, 9),
          maxZoom: 18,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          const MapCompass.cupertino(),
          const OsmAttributionWidget(),
        ],
      ),
    );
  }

  void rotateMap(double deltaRotation) {
    _mapController.rotate(_mapController.camera.rotation + deltaRotation);
  }
}

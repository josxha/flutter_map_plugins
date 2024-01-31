import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_compass/flutter_map_compass.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapCompassPage extends StatelessWidget {
  const FlutterMapCompassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_compass'),
      ),
      body: FlutterMap(
        options: const MapOptions(
          initialZoom: 5,
          initialCenter: LatLng(48, 9),
          maxZoom: 18,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          const MapCompass(),
        ],
      ),
    );
  }
}

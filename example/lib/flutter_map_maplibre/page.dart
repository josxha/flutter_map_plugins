import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_map_plugins_example/common/attribution_widget.dart';
import 'package:latlong2/latlong.dart';

class FlutterMapMapLibrePage extends StatefulWidget {
  const FlutterMapMapLibrePage({super.key});

  @override
  State<FlutterMapMapLibrePage> createState() => _FlutterMapMapLibrePageState();
}

class _FlutterMapMapLibrePageState extends State<FlutterMapMapLibrePage> {
  final _mapController = MapController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_maplibre'),
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
          const MapLibreLayer(),
          const OsmAttributionWidget(),
        ],
      ),
    );
  }
}

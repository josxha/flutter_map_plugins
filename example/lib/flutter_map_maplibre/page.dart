import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_map_plugins_example/common/attribution_widget.dart';
import 'package:latlong2/latlong.dart';

class MapLibreFlutterMapPage extends StatefulWidget {
  const MapLibreFlutterMapPage({super.key});

  @override
  State<MapLibreFlutterMapPage> createState() => _MapLibreFlutterMapPageState();
}

class _MapLibreFlutterMapPageState extends State<MapLibreFlutterMapPage> {
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
        children: const [
          MapLibreLayer(),
          OsmAttributionWidget(),
        ],
      ),
    );
  }
}

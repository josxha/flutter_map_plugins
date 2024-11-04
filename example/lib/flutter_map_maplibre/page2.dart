import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart';

class FlutterMapMapLibrePage extends StatefulWidget {
  const FlutterMapMapLibrePage({super.key});

  @override
  State<FlutterMapMapLibrePage> createState() => _FlutterMapMapLibrePageState();
}

class _FlutterMapMapLibrePageState extends State<FlutterMapMapLibrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_maplibre 2'),
      ),
      body: MapLibreMap(
        options: MapOptions(
          initCenter: Position(0, 0),
          initZoom: 3,
          maxPitch: 0,
        ),
        children: const [
          /*FlutterMapAdapter(
            child: Opacity(
              opacity: 0.6,
              child: fm.TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
            ),
          ),*/
          FlutterMapAdapter(
            child: fm.CircleLayer(
              circles: [fm.CircleMarker(point: LatLng(0, 0), radius: 10)],
            ),
          ),
        ],
      ),
    );
  }
}

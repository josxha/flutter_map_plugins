import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_map_plugins_example/flutter_map_maplibre/config.dart';
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart';

class FlutterMapMapLibrePage extends StatefulWidget {
  const FlutterMapMapLibrePage({super.key});

  @override
  State<FlutterMapMapLibrePage> createState() => _FlutterMapMapLibrePageState();
}

class _FlutterMapMapLibrePageState extends State<FlutterMapMapLibrePage> {
  /// The MapLibreMap controller
  // ignore: unused_field, use_late_for_private_fields_and_variables
  MapController? _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('FlutterMap in MapLibre'),
      ),
      body: MapLibreMap(
        onMapCreated: (controller) => _controller = controller,
        options: MapOptions(
          initCenter: Position(0, 0),
          initZoom: 3,
          maxPitch: 0, // flutter_map doesn't support pitch, disable it here
          initStyle:
              'https://api.protomaps.com/styles/v2/light.json?key=$protomapsKey',
        ),
        children: [
          const FlutterMapAdapter(
            child: fm.CircleLayer(
              circles: [
                fm.CircleMarker(
                  point: LatLng(10, 20),
                  radius: 15,
                  color: Colors.blue,
                  borderColor: Colors.black,
                  borderStrokeWidth: 2,
                ),
              ],
            ),
          ),
          const FlutterMapAdapter(
            child: fm.MarkerLayer(
              rotate: true,
              markers: [
                fm.Marker(
                  point: LatLng(15, 5),
                  width: 40,
                  height: 40,
                  child: Icon(Icons.location_on, color: Colors.red, size: 40),
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
          FlutterMapAdapter(
            child: fm.PolylineLayer(
              polylines: [
                fm.Polyline(
                  points: const [
                    LatLng(-20, -10),
                    LatLng(-15, -15),
                    LatLng(-20, -25),
                  ],
                  color: Colors.purple,
                  strokeWidth: 3,
                ),
              ],
            ),
          ),
          FlutterMapAdapter(
            child: fm.PolygonLayer(
              polygons: [
                fm.Polygon(
                  points: const [
                    LatLng(8, -25),
                    LatLng(-5, -23),
                    LatLng(5, -10),
                    LatLng(10, -15),
                  ],
                  color: Colors.pink.withOpacity(0.8),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

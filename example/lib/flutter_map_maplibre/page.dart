import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_map_plugins_example/common/attribution_widget.dart';
import 'package:flutter_map_plugins_example/flutter_map_maplibre/config.dart';
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
        title: const Text('MapLibre in FlutterMap'),
      ),
      body: FlutterMap(
        mapController: _mapController,
        options: const MapOptions(
          initialZoom: 4,
          initialCenter: LatLng(0, 0),
          maxZoom: 20,
        ),
        children: [
          const MapLibreLayer(
            initStyle:
                'https://api.protomaps.com/styles/v2/light.json?key=$protomapsKey',
          ),
          const CircleLayer(
            circles: [
              CircleMarker(
                point: LatLng(10, 20),
                radius: 15,
                color: Colors.blue,
                borderColor: Colors.black,
                borderStrokeWidth: 2,
              ),
            ],
          ),
          const MarkerLayer(
            markers: [
              Marker(
                point: LatLng(15, 5),
                width: 40,
                height: 40,
                child: Icon(Icons.location_on, color: Colors.red, size: 40),
                alignment: Alignment.topCenter,
              ),
            ],
          ),
          PolylineLayer(
            polylines: [
              Polyline(
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
          PolygonLayer(
            polygons: [
              Polygon(
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
          const OsmAttributionWidget(),
        ],
      ),
    );
  }
}

import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_map_plugins_example/common/attribution_widget.dart';
import 'package:latlong2/latlong.dart';
import 'package:material_ui/material_ui.dart';

class MapLibreFlutterMapPage extends StatefulWidget {
  const new({super.key});

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
        options: MapOptions(
          initialZoom: 4,
          initialCenter: const LatLng(0, 0),
          maxZoom: 20,
          // maplibre does not support an unbound latitude
          cameraConstraint: CameraConstraint.contain(
            bounds: LatLngBounds(
              const LatLng(-90, -180),
              const LatLng(90, 180),
            ),
          ),
        ),
        children: [
          // uses the OpenFreeMap liberty style by default
          MapLibreLayer(
            // flutter_map layers in the children of the MapLibreLayer are
            // drawn at the camera of the map frame on screen, so they stay
            // on the map while it moves
            children: [
              const FlutterMapAdapter(
                child: CircleLayer(
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
              ),
              const FlutterMapAdapter(
                child: MarkerLayer(
                  rotate: true,
                  markers: [
                    Marker(
                      point: LatLng(15, 5),
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.location_on,
                        color: Colors.red,
                        size: 40,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
              ),
              FlutterMapAdapter(
                child: PolylineLayer(
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
              ),
              FlutterMapAdapter(
                child: PolygonLayer(
                  polygons: [
                    Polygon(
                      points: const [
                        LatLng(8, -25),
                        LatLng(-5, -23),
                        LatLng(5, -10),
                        LatLng(10, -15),
                      ],
                      color: Colors.pink.withValues(alpha: 0.8),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const OsmAttributionWidget(),
        ],
      ),
    );
  }
}

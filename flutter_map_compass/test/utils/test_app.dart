import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_compass/flutter_map_compass.dart';
import 'package:latlong2/latlong.dart';
import 'package:material_ui/material_ui.dart';

class TestApp extends StatelessWidget {
  const new({
    required this.mapController,
    required this.cupertinoCompassKey,
    required this.customCompassKey,
    super.key,
  });

  final ValueKey<String> cupertinoCompassKey;
  final ValueKey<String> customCompassKey;
  final MapController mapController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlutterMap(
          mapController: mapController,
          options: const MapOptions(
            initialZoom: 0,
            initialCenter: LatLng(0, 0),
          ),
          children: [
            MapCompass.cupertino(key: cupertinoCompassKey),
            MapCompass(
              key: customCompassKey,
              icon: const Icon(Icons.arrow_downward),
              rotationOffset: 180,
              hideIfRotatedNorth: true,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,
              animationCurve: Curves.linear,
              rotationDuration: const Duration(milliseconds: 10),
            ),
          ],
        ),
      ),
    );
  }
}

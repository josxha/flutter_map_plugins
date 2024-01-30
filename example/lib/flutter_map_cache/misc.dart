import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const mapOptions = MapOptions(
  initialCenter: LatLng(47.141344, 9.553680),
  interactionOptions: InteractionOptions(
    flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
  ),
  maxZoom: 16,
  initialZoom: 8,
);

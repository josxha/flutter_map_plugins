import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

class LatLngConverter implements JsonConverter<LatLng, List<double>> {
  const LatLngConverter();

  @override
  LatLng fromJson(List<double> json) => LatLng(json[1], json[0]);

  @override
  List<double> toJson(LatLng coords) => [coords.longitude, coords.latitude];
}

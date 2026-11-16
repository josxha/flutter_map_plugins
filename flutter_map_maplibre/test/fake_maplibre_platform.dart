import 'package:flutter/widgets.dart';
import 'package:maplibre_platform_interface/maplibre_platform_interface.dart';
// The inherited model that provides MapController.of and CameraPosition.of
// to the children of a MapLibreMap.
import 'package:maplibre_platform_interface/src/widget/inherited_model.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// A [MapLibrePlatform] that renders an empty box and records the camera
/// calls. It allows to test widgets that embed [MapLibreMap] without a native
/// view.
class FakeMapLibrePlatform extends MapLibrePlatform
    with MockPlatformInterfaceMixin {
  /// The state of the last created fake map.
  FakeMapLibreMapState? lastState;

  @override
  MapLibreMapState createWidgetState() => lastState = FakeMapLibreMapState();
}

/// Arguments of a [MapController.moveCamera] call.
typedef MoveCameraCall = ({Geographic? center, double? zoom, double? bearing});

/// State of the fake map widget.
class FakeMapLibreMapState extends MapLibreMapState {
  /// All recorded [moveCamera] calls.
  final List<MoveCameraCall> moveCameraCalls = [];

  @override
  void initState() {
    super.initState();
    widget.onMapCreated?.call(this);
  }

  /// The camera of the map frame on screen, which [moveCamera] moves.
  CameraPosition shownCamera = const CameraPosition(
    center: Geographic(lon: 0, lat: 0),
    zoom: 2,
    bearing: 0,
    pitch: 0,
  );

  @override
  CameraPosition? get camera => shownCamera;

  @override
  CameraPosition getCamera() => shownCamera;

  @override
  Widget build(BuildContext context) => MapLibreInheritedModel(
    mapController: this,
    cameraPosition: shownCamera,
    child: Stack(children: widget.children),
  );

  /// Show a map frame with [camera].
  void showCamera(CameraPosition camera) =>
      setState(() => shownCamera = camera);

  @override
  Future<void> moveCamera(CameraUpdate update) async {
    final position = update as CameraUpdatePosition;
    moveCameraCalls.add((
      center: position.center,
      zoom: position.zoom,
      bearing: position.bearing,
    ));
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

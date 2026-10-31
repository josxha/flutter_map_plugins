import 'package:flutter/widgets.dart';
import 'package:maplibre_platform_interface/maplibre_platform_interface.dart';
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

  @override
  Widget build(BuildContext context) => Stack(children: widget.children);

  @override
  Future<void> moveCamera({
    Geographic? center,
    double? zoom,
    double? bearing,
    double? pitch,
    EdgeInsets padding = EdgeInsets.zero,
  }) async {
    moveCameraCalls.add((center: center, zoom: zoom, bearing: bearing));
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:flutter_map_maplibre/src/extensions.dart';
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart';

/// A `flutter_map` [fm.MapController] that controls a [MapLibreMap].
///
/// `flutter_map` layers inside of a [MapLibreMap] get it from
/// [fm.MapController.of], so that their camera calls move the MapLibre camera
/// and their event listeners see the MapLibre camera changes.
///
/// Camera changes apply asynchronously: [camera] keeps returning the camera
/// of the map frame on screen until the map shows the new one.
final class MapLibreFlutterMapController implements fm.MapController {
  /// Create a controller that moves the camera of [mapController].
  new(this.mapController);

  /// The controller of the [MapLibreMap].
  MapController mapController;

  final _events = StreamController<fm.MapEvent>.broadcast();
  fm.MapCamera? _camera;

  /// Whether a camera change was requested that the map doesn't show yet.
  bool _pending = false;

  /// The id of the last requested camera change, for the events that report
  /// it once the map shows it.
  String? _pendingId;

  /// Set the camera of the map frame on screen. Emits a move or rotate event
  /// if it changed.
  void updateCamera(fm.MapCamera camera) {
    final old = _camera;
    _camera = camera;
    if (old == null ||
        (old.center == camera.center &&
            old.zoom == camera.zoom &&
            old.rotation == camera.rotation &&
            old.nonRotatedSize == camera.nonRotatedSize)) {
      return;
    }
    final id = _pendingId;
    _pending = false;
    _pendingId = null;
    if (_events.isClosed || !_events.hasListener) return;
    if (old.center != camera.center || old.zoom != camera.zoom) {
      _events.add(
        fm.MapEventMove(
          id: id,
          source: fm.MapEventSource.custom,
          oldCamera: old,
          camera: camera,
        ),
      );
    }
    if (old.rotation != camera.rotation) {
      _events.add(
        fm.MapEventRotate(
          id: id,
          source: fm.MapEventSource.custom,
          oldCamera: old,
          camera: camera,
        ),
      );
    }
    if (old.nonRotatedSize != camera.nonRotatedSize) {
      _events.add(
        fm.MapEventNonRotatedSizeChange(
          source: fm.MapEventSource.nonRotatedSizeChange,
          oldCamera: old,
          camera: camera,
        ),
      );
    }
  }

  @override
  fm.MapCamera get camera =>
      _camera ??
      (throw StateError('The camera is not known before the first frame.'));

  @override
  Stream<fm.MapEvent> get mapEventStream => _events.stream;

  @override
  bool move(
    LatLng center,
    double zoom, {
    Offset offset = Offset.zero,
    String? id,
  }) {
    var target = center;
    if (offset != Offset.zero) {
      final camera = this.camera;
      final point = camera.projectAtZoom(center, zoom);
      target = camera.unprojectAtZoom(
        camera.rotatePoint(point, point - offset),
        zoom,
      );
    }
    return _moveTo(center: target, zoom: zoom, id: id);
  }

  @override
  bool rotate(double degree, {String? id}) => _moveTo(rotation: degree, id: id);

  @override
  ({bool moveSuccess, bool rotateSuccess}) rotateAroundPoint(
    double degree, {
    Offset? offset,
    String? id,
  }) {
    final camera = this.camera;
    if (!_pending && degree == camera.rotation) {
      return (moveSuccess: false, rotateSuccess: false);
    }
    if (offset == null || offset == Offset.zero) {
      return (moveSuccess: true, rotateSuccess: rotate(degree, id: id));
    }
    final diff = degree - camera.rotation;
    final centerPoint = camera.projectAtZoom(camera.center);
    final rotationCenter = centerPoint + offset.rotate(camera.rotationRad);
    final center = camera.unprojectAtZoom(
      rotationCenter +
          (centerPoint - rotationCenter).rotate(diff * math.pi / 180),
    );
    final moved = _moveTo(center: center, rotation: degree, id: id);
    return (moveSuccess: moved, rotateSuccess: moved);
  }

  @override
  ({bool moveSuccess, bool rotateSuccess}) moveAndRotate(
    LatLng center,
    double zoom,
    double degree, {
    String? id,
  }) {
    final moved = _moveTo(center: center, zoom: zoom, rotation: degree, id: id);
    return (moveSuccess: moved, rotateSuccess: moved);
  }

  @override
  bool fitCamera(fm.CameraFit cameraFit) {
    final fitted = cameraFit.fit(camera);
    return _moveTo(center: fitted.center, zoom: fitted.zoom);
  }

  bool _moveTo({LatLng? center, double? zoom, double? rotation, String? id}) {
    final camera = _camera;
    // A request that the map doesn't show yet may be overridden by one that
    // goes back to the camera on screen, so only skip when none is pending.
    if (camera != null &&
        !_pending &&
        (center == null || center == camera.center) &&
        (zoom == null || zoom == camera.zoom) &&
        (rotation == null || rotation == camera.rotation)) {
      return false;
    }
    _pending = true;
    _pendingId = id;
    unawaited(
      mapController.moveCamera(
        CameraUpdate.position(
          center: center?.toPosition(),
          zoom: zoom == null ? null : zoom - 1,
          bearing: rotation == null ? null : -rotation,
        ),
      ),
    );
    return true;
  }

  @override
  void dispose() => unawaited(_events.close());
}

extension on Offset {
  /// Rotates this offset by [radians] the same way as `flutter_map` does in
  /// its `MapController.rotateAroundPoint`.
  Offset rotate(double radians) {
    final cos = math.cos(radians);
    final sin = math.sin(radians);
    return Offset(cos * dx + sin * dy, cos * dy - sin * dx);
  }
}

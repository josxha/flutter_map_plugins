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

  /// The camera values of the last request. They differ from [_camera] while
  /// the map doesn't show the request yet.
  LatLng? _requestedCenter;
  double? _requestedZoom;
  double? _requestedRotation;

  /// The id of the last requested camera change, for the events that report
  /// it once the map shows it.
  String? _pendingId;

  /// Set the camera of the map frame on screen. Emits a move or rotate event
  /// if it changed.
  void updateCamera(fm.MapCamera camera) {
    final old = _camera;
    _camera = camera;
    if (old == null) return;
    final moved = old.center != camera.center || old.zoom != camera.zoom;
    final rotated = old.rotation != camera.rotation;
    final resized = old.nonRotatedSize != camera.nonRotatedSize;
    // A resize alone doesn't show a requested camera change.
    final id = moved || rotated ? _pendingId : null;
    if (moved || rotated) {
      _pendingId = null;
    }
    if (_events.isClosed || !_events.hasListener) return;
    if (moved) {
      _events.add(
        fm.MapEventMove(
          id: id,
          source: fm.MapEventSource.custom,
          oldCamera: old,
          camera: camera,
        ),
      );
    }
    if (rotated) {
      _events.add(
        fm.MapEventRotate(
          id: id,
          source: fm.MapEventSource.custom,
          oldCamera: old,
          camera: camera,
        ),
      );
    }
    if (resized) {
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
    if (!_changes(rotation: degree)) {
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
    if (!_changes(center: center, zoom: zoom, rotation: rotation)) {
      return false;
    }
    _requestedCenter = center ?? _requestedCenter;
    _requestedZoom = zoom ?? _requestedZoom;
    _requestedRotation = rotation ?? _requestedRotation;
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

  /// Whether a request for these values changes the camera: they differ from
  /// the camera on screen, or from a request that the map may not show yet.
  bool _changes({LatLng? center, double? zoom, double? rotation}) {
    final camera = _camera;
    if (camera == null) return true;
    bool differs<T>(T? value, T shown, T? requested) =>
        value != null &&
        (value != shown || (requested != null && value != requested));
    return differs(center, camera.center, _requestedCenter) ||
        differs(zoom, camera.zoom, _requestedZoom) ||
        differs(rotation, camera.rotation, _requestedRotation);
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

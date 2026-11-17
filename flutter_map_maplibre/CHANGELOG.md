## 0.1.0-pre.3

- `MapLibreLayer` builds the map with `MapLibreMap.withCamera` and the
  `flutter_map` camera, so the map applies it while it builds: on web the
  map and the `flutter_map` layers show in the same browser frame with every
  renderer.
- `FlutterMapAdapter` keeps one `flutter_map` controller for its layers
  instead of creating one per frame, which slowed down gestures. Its
  `MapController` now moves the MapLibre camera and emits the camera changes
  on `mapEventStream`.
- `FlutterMapAdapter` works inside `MapLibreLayer.children`: the layers are
  drawn at the camera of the map frame on screen, so they no longer float
  above the map while it moves.
- Breaking: remove `MapControllerExt.toFlutterMapController()`, which returned
  an unconnected controller.
- Update `maplibre` and `maplibre_platform_interface` to `^0.4.0-pre.3`.

## 0.1.0-pre.2

- Update `maplibre` and `maplibre_platform_interface` to
  `^0.4.0-pre.2`.
- Adapt camera synchronization to `CameraUpdate` and `CameraPosition`.
- Expose each typed MapLibre event callback as an individual `MapLibreLayer` parameter.

## 0.1.0-pre.1

- Use the OpenFreeMap liberty style as default style of `MapLibreLayer`
- `MapLibreLayer` exposes all `MapLibreMap` parameters that make sense with
  `flutter_map` (`style`, `minZoom`, `maxZoom`, `maxBounds`, `layers`, `paused`,
  `onMapCreated`, `onStyleLoaded`). `initStyle` was renamed to `style` and takes
  a `MapStyle`.
- Update `maplibre` to `^0.4.0-pre.1` (`0.4.x` versions included)

## 0.0.5

- Update `maplibre` to `^0.3.0`

## 0.0.4

- Update docs
- Bump minimum Flutter version to 3.29.0
- Bump minimum Dart version to 3.7.0

## 0.0.3

- Support for flutter_map v8

## 0.0.2

- Enhance documentation and example
- Add package tags

## 0.0.1

- Add `FlutterMapAdapter`
- Add `MapLibreLayer`
- Initial release
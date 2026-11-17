## 0.1.0-pre.3

- Update `maplibre` to `^0.4.0-pre.3`.
- Breaking: remove `MapControllerExt.toFlutterMapController()`.
- `MapLibreLayer`: the map and the `flutter_map` layers stay in sync while
  the map moves on web.
- `FlutterMapAdapter`: faster gestures, and `MapController.of(context)` moves
  the MapLibre camera and emits its changes on `mapEventStream`.
- `FlutterMapAdapter` can be used in `MapLibreLayer.children` to keep
  `flutter_map` layers on the map while it moves.
- Docs: on web, serve wasm builds without COOP/COEP headers to keep the
  `flutter_map` layers in sync with the map.

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
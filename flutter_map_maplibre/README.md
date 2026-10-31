# flutter_map_maplibre

This package offers performant Mapbox Vector Tiles (MVT) support
for [flutter_map](https://pub.dev/packages/flutter_map)
powered by [maplibre](https://pub.dev/packages/maplibre), which renders maps
with the native MapLibre SDKs.

- `MapLibreLayer`: use a `MapLibreMap` as a layer inside of `FlutterMap`.
- `FlutterMapAdapter`: use `flutter_map` layers (markers, polylines, ...) inside
  of `MapLibreMap`.

[![Pub Version](https://img.shields.io/pub/v/flutter_map_maplibre)](https://pub.dev/packages/flutter_map_maplibre)
[![likes](https://img.shields.io/pub/likes/flutter_map_maplibre?logo=flutter)](https://pub.dev/packages/flutter_map_maplibre)
[![Pub Points](https://img.shields.io/pub/points/flutter_map_maplibre)](https://pub.dev/packages/flutter_map_maplibre/score)
[![Pub Downloads](https://img.shields.io/pub/dm/flutter_map_maplibre)](https://pub.dev/packages/flutter_map_maplibre)

[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)

![Showcase](https://raw.githubusercontent.com/josxha/flutter_map_plugins/1dbc16057899a7aa6ccb57ecc2f9bb1e53c87b0b/showcase.gif)

## Getting started

1. Add the dependencies to your `pubspec.yaml` file.

```yaml
dependencies:
  flutter_map: ^8.0.0
  flutter_map_maplibre: ^0.1.0
  maplibre: ^0.4.0-pre.1
```

2. Follow the platform specific
   [setup steps](https://flutter-maplibre.pages.dev/docs/category/getting-started)
   for the `maplibre` package:

- [Setup Web](https://flutter-maplibre.pages.dev/docs/getting-started/setup-web)
- [Setup Android](https://flutter-maplibre.pages.dev/docs/getting-started/setup-android)
- [Setup iOS](https://flutter-maplibre.pages.dev/docs/getting-started/setup-ios)

3. Import the packages:

```dart
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:latlong2/latlong.dart';
// Only import what you need from maplibre to avoid name clashes with
// flutter_map, e.g. MapOptions and MapController exist in both packages.
import 'package:maplibre/maplibre.dart' show MapStyle;
```

## Usage

There are two ways to bridge the gap between `flutter_map` and `maplibre`:

|                | `MapLibreLayer`                          | `FlutterMapAdapter`                  |
|----------------|------------------------------------------|--------------------------------------|
| Root widget    | `FlutterMap`                             | `MapLibreMap`                        |
| Gestures       | handled by `flutter_map`                 | handled by `maplibre`                |
| Camera control | `flutter_map` `MapController`            | `maplibre` `MapController`           |
| Use it to      | add a vector map to an existing FlutterMap | use flutter_map layers in a MapLibre map |

Each solution has its pros and cons. You can check out both implementations in
the [hosted example app](https://flutter-map-plugins.web.app/).

### Use MapLibre as a vector layer in FlutterMap

Add a `MapLibreLayer` to the `children` of `FlutterMap`. `flutter_map` handles
all gesture inputs and the `MapLibreLayer` follows its camera.

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
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
      const MapLibreLayer(),
      // add other flutter_map layers here
    ],
  );
}
```

Use another style with the `style` parameter:

```dart
MapLibreLayer(
  style: MapStyle.url('https://tiles.openfreemap.org/styles/liberty'),
)
```

#### MapLibreLayer parameters

| Parameter       | Description                                                                                  |
|-----------------|----------------------------------------------------------------------------------------------|
| `style`         | The map style (`MapStyle.url`, `.json`, `.asset`, `.file`). Defaults to OpenFreeMap liberty. |
| `minZoom`       | Minimum zoom level of the MapLibre map.                                                      |
| `maxZoom`       | Maximum zoom level of the MapLibre map.                                                      |
| `maxBounds`     | Restricts the camera of the MapLibre map to a `GeoBox`.                                      |
| `layers`        | MapLibre layers that are rendered on top of the style (`MapLibreMap.layers`).                |
| `children`      | Widgets that are placed on top of the MapLibre map (`MapLibreMap.children`).                 |
| `paused`        | Pauses the rendering of the map.                                                             |
| `onMapCreated`  | Called with the `maplibre` `MapController` when the map got created.                         |
| `onStyleLoaded` | Called with the `StyleController` when the style has been loaded.                            |
| `onEvent`       | Called for all `maplibre` map events.                                                        |

The following options of `MapLibreMap` are not configurable because
`flutter_map` controls the camera: the camera pitch (tilt), the gestures and
the initial camera.

> [!NOTE]
> The zoom levels of MapLibre are one level lower than the zoom levels of
> `flutter_map` (with its default 256px tiles). `MapLibreLayer` converts the
> zoom for you. Keep that in mind when you set `minZoom` and `maxZoom` of the
> `MapLibreLayer`, they use the MapLibre zoom levels. To restrict the camera use the options of
> `FlutterMap`.

### Use FlutterMap layers inside MapLibre

Wrap each `flutter_map` layer with a `FlutterMapAdapter` and add it to
the `children` of `MapLibreMap`. All gesture inputs are handled by `maplibre`.

```dart
@override
Widget build(BuildContext context) {
  return MapLibreMap(
    onMapCreated: (controller) => _controller = controller,
    options: MapOptions(
      initCamera: InitialCamera.position(zoom: 3),
      maxPitch: 0, // flutter_map doesn't support camera pitch, disable it here
      style: MapStyle.url('https://tiles.openfreemap.org/styles/liberty'),
    ),
    children: [
      // wrap each of your flutter_map layer with a FlutterMapAdapter widget
      const FlutterMapAdapter(
        child: MarkerLayer(
          markers: [
            Marker(
              point: LatLng(15, 5),
              width: 40,
              height: 40,
              child: Icon(Icons.location_on, color: Colors.red, size: 40),
              alignment: Alignment.topCenter,
            ),
          ],
        ),
      ),
    ],
  );
}
```

> [!NOTE]
> In this example `MapOptions`, `InitialCamera` and `MapLibreMap` come from
> `package:maplibre/maplibre.dart`. Import it with a prefix if you also use
> `flutter_map` in the same file.

## Limitations

- `flutter_map` can't tilt the camera. `MapLibreLayer` disables the pitch.
- `MapLibreLayer` works with the default `Epsg3857` coordinate reference
  system of `FlutterMap` only, because MapLibre uses Web Mercator.
- MapLibre renders vector tiles with native SDKs. Platform support is the same
  as the [maplibre](https://pub.dev/packages/maplibre) package.

## Additional information

Pull requests or bug reports are welcome.

If you need help you
can [open an issue](https://github.com/josxha/flutter_map_plugins/issues/new/choose)
or join
the [`flutter_map` discord server](https://discord.gg/BwpEsjqMAH).

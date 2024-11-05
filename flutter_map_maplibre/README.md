# flutter_map_maplibre

This package offers performant Mapbox Vector Tiles (MVT) support
for [flutter_map](https://pub.dev/packages/flutter_map)
powered by [maplibre](https://pub.dev/packages/maplibre).

[![Pub Version](https://img.shields.io/pub/v/flutter_map_maplibre)](https://pub.dev/packages/flutter_map_maplibre)
[![likes](https://img.shields.io/pub/likes/flutter_map_maplibre?logo=flutter)](https://pub.dev/packages/flutter_map_maplibre)
[![Pub Points](https://img.shields.io/pub/points/flutter_map_maplibre)](https://pub.dev/packages/flutter_map_maplibre/score)
[![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_maplibre)](https://pub.dev/packages/flutter_map_maplibre)

[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)

![Showcase](https://raw.githubusercontent.com/josxha/flutter_map_plugins/1dbc16057899a7aa6ccb57ecc2f9bb1e53c87b0b/showcase.gif)

## Getting started

1. Add the dependencies to your `pubspec.yaml` file.

```yaml
dependencies:
  flutter_map: ^7.0.0
  flutter_map_maplibre: ^0.0.1
  maplibre: ^0.1.0
```

2. Follow the platform
   specific [setup steps](https://flutter-maplibre.pages.dev/docs/category/getting-started)
   for the `maplibre` package:

- [Setup Web](https://flutter-maplibre.pages.dev/docs/getting-started/setup-web)
- [Setup Android](https://flutter-maplibre.pages.dev/docs/getting-started/setup-android)

## Usage

There are two ways how to use bridge the gap between `flutter_map`
and `maplibre`:

- Add a MapLibre map as a layer to a FlutterMap map
- or use FlutterMap layers in a MapLibre map

Each solution has its pro and cons. You can check out both implementations in
the [hosted example app](https://flutter-map-plugins.web.app/).

#### Use MapLibre as a vector layer in FlutterMap

Here we add a `MapLibreMap` as a layer to `FlutterMap` and let flutter_map
handle all gesture inputs.

> [!WARNING]
> NOTE: The `MapLibreLayer` has currently a known bug on Android causing it to
> have a high delay and throwing exceptions to the
> console: https://github.com/josxha/flutter_map_plugins/issues/54

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    mapController: _mapController,
    options: const MapOptions(
      initialZoom: 4,
      initialCenter: LatLng(0, 0),
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
      const MapLibreLayer(
        initStyle: 'insert your style url here',
      ),
      // add other flutter_map layers here
    ],
  );
}
```

#### Use FlutterMap layers inside MapLibre

In this solution we use `FlutterMap` layers in `MapLibreMap`.
All gesture inputs are handled by maplibre.

```dart
@override
Widget build(BuildContext context) {
  return MapLibreMap(
    onMapCreated: (controller) => _controller = controller,
    options: MapOptions(
      initCenter: Position(0, 0),
      initZoom: 3,
      maxPitch: 0, // flutter_map doesn't support camera pitch, disable it here
      initStyle: 'insert your style url here',
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

## Additional information

Pull requests or bug reports are welcome.

If you need help you
can [open an issue](https://github.com/josxha/flutter_map_plugins/issues/new/choose)
or join
the [`flutter_map` discord server](https://discord.gg/BwpEsjqMAH).

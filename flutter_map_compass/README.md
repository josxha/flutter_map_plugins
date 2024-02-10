# flutter_map_compass

A simple compass for flutter_map. It shows the rotation of the map and resets
the rotation back to 0 when tapped.

[![Pub Version](https://img.shields.io/pub/v/flutter_map_compass)](https://pub.dev/packages/flutter_map_compass)
[![likes](https://img.shields.io/pub/likes/flutter_map_compass?logo=flutter)](https://pub.dev/packages/flutter_map_compass)
[![Pub Points](https://img.shields.io/pub/points/flutter_map_compass)](https://pub.dev/packages/flutter_map_compass/score)
[![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_compass)](https://pub.dev/packages/flutter_map_compass)

[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)

<img src="https://raw.githubusercontent.com/josxha/flutter_map_plugins/main/flutter_map_compass/images/screenshot.jpg" width="350px" alt="Example screenshot">

## Getting started

Add the following packages to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_map: ^6.0.0         # in case you don't have it yet 
  flutter_map_compass: ^1.0.0 # this package
```

## Usage

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      ),

      // use the default compass that is based on the cupertino compass icon
      const MapCompass.cupertino(
        hideIfRotatedNorth: true,
      ),

      // Or use the primary constructor to customize all
      const MapCompass(
        icon: Icon(Icons.arrow_upward),
        hideIfRotatedNorth: true,
      ),
    ],
  );
}
```

## Additional information

If you need help you
can [open an issue](https://github.com/josxha/flutter_map_plugins/issues/new/choose)
or join
the [`flutter_map` discord server](https://discord.gg/BwpEsjqMAH).
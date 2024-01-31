# flutter_map_compass

A simple compass for flutter_map. It shows the rotation of the map and resets the rotation back to 0 on tap.

![Pub Likes](https://img.shields.io/pub/likes/flutter_map_compass)
![Pub Points](https://img.shields.io/pub/points/flutter_map_compass)
![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_compass)
![Pub Version](https://img.shields.io/pub/v/flutter_map_compass)

![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)
![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)
![GitHub Repo stars](https://img.shields.io/github/stars/josxha/flutter_map_plugins?style=social)

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
      const MapCompass(),
    ],
  );
}
```

## Additional information

If you need help you
can [open an issue](https://github.com/josxha/flutter_map_plugins/issues/new/choose)
or join
the [`flutter_map` discord server](https://discord.gg/BwpEsjqMAH).
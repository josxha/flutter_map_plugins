# flutter_map_scalebar

### A scalebar for [`flutter_map`](https://pub.dev/packages/flutter_map).
This package is based on the scalebar example from the flutter_map example 
plugin but has some fixes and improved customizability.

![Pub Likes](https://img.shields.io/pub/likes/flutter_map_pmtiles)
![Pub Points](https://img.shields.io/pub/points/flutter_map_pmtiles)
![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_pmtiles)
![Pub Version](https://img.shields.io/pub/v/flutter_map_pmtiles)

![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)
![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)
![GitHub Repo stars](https://img.shields.io/github/stars/josxha/flutter_map_plugins?style=social)

## Getting started

Add the following packages to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_map: ^6.0.0          # in case you don't have it yet 
  flutter_map_scalebar: ^1.0.0 # this package
```

## Usage

Just add the `Scalebar()` to your list of map layers and that's it.

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      ),
      // place the ScalebarLayer as the last list item, to have it on top
      const Scalebar(),
    ],
  );
}
```

However, you can use its parameters to further customize the scalebar:

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      const Scalebar(
        textStyle: TextStyle(color: Colors.black),
        padding: EdgeInsets.all(10),
        lineColor: Colors.black,
        lineHeight: 5,
        strokeWidth: 1,
        relativeWidth: 3,
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
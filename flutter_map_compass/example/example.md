### Basic usage

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      ),
      const MapCompass.cupertino(),
    ],
  );
}
```

### Need more information?

- Read
  the [README.md](https://github.com/josxha/flutter_map_plugins/blob/main/flutter_map_compass/README.md)
- Check out
  the [combined example app](https://github.com/josxha/flutter_map_plugins/tree/main/example)
  that showcases this and other flutter_map
  packages.
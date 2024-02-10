# vector_map_tiles_pmtiles

A tile provider
for [vector_map_tiles](https://pub.dev/packages/vector_map_tiles) that adds
support
for PMTiles.

[![Pub Version](https://img.shields.io/pub/v/vector_map_tiles_pmtiles)](https://pub.dev/packages/vector_map_tiles_pmtiles)
[![likes](https://img.shields.io/pub/likes/vector_map_tiles_pmtiles?logo=flutter)](https://pub.dev/packages/vector_map_tiles_pmtiles)
[![Pub Points](https://img.shields.io/pub/points/vector_map_tiles_pmtiles)](https://pub.dev/packages/vector_map_tiles_pmtiles/score)
[![Pub Popularity](https://img.shields.io/pub/popularity/vector_map_tiles_pmtiles)](https://pub.dev/packages/vector_map_tiles_pmtiles)

[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)

<table>
<tr>
<th>light</th>
<th>white</th>
<th>grayscale</th>
</tr>
<tr>
<td style="width: 33%"><img src="https://raw.githubusercontent.com/josxha/flutter_map_plugins/main/vector_map_tiles_pmtiles/images/screenshot-light.jpg" alt="Example screenshot"></td>
<td style="width: 33%"><img src="https://raw.githubusercontent.com/josxha/flutter_map_plugins/main/vector_map_tiles_pmtiles/images/screenshot-white.jpg" alt="Example screenshot"></td>
<td style="width: 33%"><img src="https://raw.githubusercontent.com/josxha/flutter_map_plugins/main/vector_map_tiles_pmtiles/images/screenshot-grayscale.jpg" alt="Example screenshot"></td>
</tr>
</table>

<table style="width: 66%">
<tr>
<th>dark</th>
<th>black</th>
</tr>
<tr>
<td style="width: 33%"><img src="https://raw.githubusercontent.com/josxha/flutter_map_plugins/main/vector_map_tiles_pmtiles/images/screenshot-dark.jpg" alt="Example screenshot"></td>
<td style="width: 33%"><img src="https://raw.githubusercontent.com/josxha/flutter_map_plugins/main/vector_map_tiles_pmtiles/images/screenshot-black.jpg" alt="Example screenshot"></td>
</tr>
</table>

## Getting started

Add the following packages to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_map: ^6.0.0              # in case you don't have it yet 
  vector_map_tiles_pmtiles: ^1.1.0 # this package
```

## Usage

1. Initiate the TileProvider

```dart
// ...from an URL
final _futureTileProvider = PmTilesVectorTileProvider
    .fromSource('https://example.com/useYourOwnHostedPMTilesFile.pmtiles');
// ...from an local file on the file system
final _futureTileProvider = PmTilesVectorTileProvider
    .fromSource('some/file/system/path.pmtiles');
// ...or provide a PmTilesArchive directly 
// (you'll have to add pmtiles as direct dependency to your project)
final _futureTileProvider = PmTilesVectorTileProvider
    .fromArchive(somePmTilesArchive);
```

2. Create your map theme

The theme specifies the look of the rendered map.

- You can use one of the default Protomaps basemap
  themes, for example the light theme: `ProtomapsThemes.light()`.
- or provide your own style with: `ThemeReader().read(myStyleJson)`.

Note: Styles from Mapbox, OpenMapTiles and others and not compatible
with Protomaps styles.

3. Await the future, e.g. by using a `FutureBuilder`.

4. Provide your `PmTilesVectorTileProvider` and your map theme to
   your `TileLayer`.

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      VectorTileLayer(
        // the map theme
        theme: mapTheme,

        tileProviders: TileProviders({
          // the awaited vector tile provider
          'protomaps': tileProvider,
        }),

        // disable the file cache when you change the PMTiles source
        // fileCacheTtl: Duration.zero,
      ),
    ],
  );
}
```

## Frequent questions

<details>

<summary>Where do I get PMTiles files from?</summary>

Visit
the [Getting Started](https://docs.protomaps.com/guide/getting-started) guide on
protomaps.com.

</details>

<details>

<summary>Can I use a custom style?</summary>

Yes that's possible. Start with one of the basemap themes and make the changes
you want. Then use `ThemeReader().read(style)` to use your theme.

Maputnik has currently no built-in support for
PMTiles ([open issue here](https://github.com/maplibre/maputnik/issues/807)).
But you can use the
fork [maputnik-with-pmtiles](https://github.com/a-nyx/maputnik-with-pmtiles) in
the meantime.

</details>

## Additional information

If you need help you
can [open an issue](https://github.com/josxha/flutter_map_plugins/issues/new/choose)
or join
the [`flutter_map` discord server](https://discord.gg/BwpEsjqMAH).
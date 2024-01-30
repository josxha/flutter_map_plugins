import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/flutter_map_mbtiles.dart';
import 'package:latlong2/latlong.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_tile_renderer/vector_tile_renderer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_map_mbtiles example'),
      ),
      body: const PageContent(),
    );
  }
}

class PageContent extends StatefulWidget {
  const PageContent({super.key});

  @override
  State<PageContent> createState() => PageContentState();
}

class PageContentState extends State<PageContent> {
  final rasterMbtiles = MBTiles(
    mbtilesPath: 'assets/mbtiles/countries-raster.mbtiles',
  );
  final vectorMbtiles = MBTiles(
    mbtilesPath: 'assets/mbtiles/countries-vector.mbtiles',
    isPBF: true, // optional, but small performance benefit
  );

  bool _useVectorMbtiles = false;
  LatLng center = const LatLng(49, 9);
  double zoom = 2;

  @override
  Widget build(BuildContext context) {
    final metadata =
        (_useVectorMbtiles ? vectorMbtiles : rasterMbtiles).getMetadata();
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            'MBTiles Name: ${metadata.name}, Format: ${metadata.format}\n'
            'center: ${center.latitude.toStringAsFixed(5)}, '
            '${center.longitude.toStringAsFixed(5)}\n'
            'zoom: ${zoom.toStringAsFixed(2)}',
          ),
        ),
        Container(
          constraints: const BoxConstraints(maxWidth: 300),
          padding: const EdgeInsets.all(12),
          child: SwitchListTile.adaptive(
            title: const Text('Use vector tiles'),
            value: _useVectorMbtiles,
            onChanged: (value) {
              setState(() => _useVectorMbtiles = value);
            },
          ),
        ),
        Expanded(
          child: FlutterMap(
            options: MapOptions(
              minZoom: 0,
              maxZoom: 6,
              initialZoom: zoom,
              initialCenter: center,
              onPositionChanged: (position, hasGesture) {
                if (position.center == null || position.zoom == null) return;
                setState(() {
                  center = position.center!;
                  zoom = position.zoom!;
                });
              },
            ),
            children: [
              if (!_useVectorMbtiles)
                TileLayer(
                  tileProvider: RasterMBTilesProvider(
                    mbtiles: rasterMbtiles,
                  ),
                ),
              if (_useVectorMbtiles)
                VectorTileLayer(
                  theme: ProvidedThemes.lightTheme(),
                  tileProviders: TileProviders({
                    'openmaptiles': VectorMBTilesProvider(
                      maxZoom: 6,
                      minZoom: 1,
                      mbtiles: vectorMbtiles,
                    ),
                  }),
                ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    rasterMbtiles.dispose();
    super.dispose();
  }
}

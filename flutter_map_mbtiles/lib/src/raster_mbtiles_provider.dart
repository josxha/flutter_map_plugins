import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/src/mbtiles_image_provider.dart';
import 'package:mbtiles/mbtiles.dart';

/// MBTiles raster [TileProvider], use for `png`, `jpg` or `webp` tiles.
class MbTilesTilesProvider extends TileProvider {
  /// MBTiles database
  final MBTiles mbtiles;

  /// Create a new [MbTilesTilesProvider] instance and pass it to as provider
  /// to a [TileLayer]
  MbTilesTilesProvider({required this.mbtiles});

  @override
  ImageProvider getImage(TileCoordinates coordinates, TileLayer options) =>
      MbTilesImageProvider(
        coordinates: coordinates,
        mbtiles: mbtiles,
      );
}

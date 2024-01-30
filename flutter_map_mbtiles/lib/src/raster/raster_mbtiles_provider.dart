import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/src/raster/mbtiles_image_provider.dart';
import 'package:mbtiles/mbtiles.dart';

/// MBTiles raster [TileProvider], use for `png`, `jpg` or `webp` tiles.
class RasterMBTilesProvider extends TileProvider {
  /// MBTiles database
  final MBTiles mbtiles;

  /// Create a new [RasterMBTilesProvider] instance and pass it to as provider
  /// to a [TileLayer]
  RasterMBTilesProvider({required this.mbtiles});

  @override
  ImageProvider getImage(TileCoordinates coordinates, TileLayer options) =>
      MBTilesImageProvider(
        coordinates: coordinates,
        mbtiles: mbtiles,
      );
}

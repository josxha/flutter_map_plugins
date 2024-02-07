import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/src/mbtiles_image_provider.dart';
import 'package:mbtiles/mbtiles.dart';

/// MBTiles raster [TileProvider], use for `png`, `jpg` or `webp` tiles.
class MbTilesTileProvider extends TileProvider {
  /// MBTiles database
  final MBTiles mbtiles;

  /// Create a new [MbTilesTileProvider] instance with an MBTiles instance.
  MbTilesTileProvider({required this.mbtiles});

  /// Create a new [MbTilesTileProvider] instance by providing the path of the
  /// MBTiles file.
  /// The MBTiles database will be opened internally.
  MbTilesTileProvider.fromPath({required String path})
      : mbtiles = MBTiles(mbtilesPath: path);

  @override
  ImageProvider getImage(TileCoordinates coordinates, TileLayer options) =>
      MbTilesImageProvider(
        coordinates: coordinates,
        mbtiles: mbtiles,
      );

  @override
  void dispose() {
    mbtiles.dispose();
    super.dispose();
  }
}

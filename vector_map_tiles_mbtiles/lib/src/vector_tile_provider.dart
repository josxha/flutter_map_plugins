import 'package:flutter/foundation.dart';
import 'package:mbtiles/mbtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

/// MBTiles raster TileProvider, use for `pbf` tiles.
class MbTilesVectorTileProvider extends VectorTileProvider {
  /// MBTiles database
  final MbTiles mbtiles;

  MbTilesMetadata get metadata => mbtiles.getMetadata();

  /// Set to true if you want to silence exceptions that would be thrown if a
  /// tile does not exist in the mbtiles file.
  ///
  /// By default this is disabled in debug mode and enabled else.
  final bool silenceTileNotFound;

  /// The minimum zoom level
  @override
  // Can't be late or it won't get picked up correctly
  final int minimumZoom;

  /// The maximum zoom level, higher zoom level get "over-zoomed"
  @override
  // Can't be late or it won't get picked up correctly
  final int maximumZoom;

  /// Create a new [MbTilesVectorTileProvider] and pass it to the flutter_map
  /// vector plugin vector_map_tiles.
  ///
  /// [minimumZoom] defaults to the minimum zoom of the mbtiles metadata.
  ///
  /// [maximumZoom] defaults to the maximum zoom of the mbtiles metadata.
  MbTilesVectorTileProvider({
    required this.mbtiles,
    required this.minimumZoom,
    required this.maximumZoom,
    this.silenceTileNotFound = !kDebugMode,
  });

  @override
  Future<Uint8List> provide(TileIdentity tile) async {
    final tmsY = ((1 << tile.z) - 1) - tile.y;
    final bytes = mbtiles.getTile(z: tile.z, x: tile.x, y: tmsY);

    if (bytes == null) {
      if (silenceTileNotFound) return Uint8List(0);
      throw Exception(
        'Tile could not be found in MBTiles '
        '(z:${tile.z}, x:${tile.x}, y:${tile.y})',
      );
    }

    return Uint8List.fromList(bytes);
  }
}

import 'package:flutter/foundation.dart';
import 'package:mbtiles/mbtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

/// MBTiles raster TileProvider, use for `pbf` tiles.
class MbTilesVectorTileProvider extends VectorTileProvider {
  /// MBTiles database
  final MBTiles mbtiles;

  final MBTilesMetadata _mbTilesMetadata;

  /// Set to true if you want to silence exceptions that would be thrown if a
  /// tile does not exist in the mbtiles file.
  ///
  /// By default this is disabled in debug mode and enabled else.
  final bool silenceTileNotFound;

  /// Create a new [MbTilesVectorTileProvider] and pass it to the flutter_map
  /// vector plugin vector_map_tiles.
  MbTilesVectorTileProvider({
    required this.mbtiles,
    this.silenceTileNotFound = !kDebugMode,
  }) : _mbTilesMetadata = mbtiles.getMetadata();

  @override
  int get maximumZoom => _mbTilesMetadata.maxZoom ?? 99;

  @override
  int get minimumZoom => _mbTilesMetadata.minZoom ?? 0;

  @override
  Future<Uint8List> provide(TileIdentity tile) async {
    final tmsY = ((1 << tile.z) - 1) - tile.y;
    final bytes = mbtiles.getTile(tile.z, tile.x, tmsY);
    if (bytes != null) return bytes;
    if (silenceTileNotFound) {
      return Uint8List(0);
    } else {
      throw Exception(
        'Tile could not be found in MBTiles '
        '(z:${tile.z}, x:${tile.x}, y:${tile.y})',
      );
    }
  }
}
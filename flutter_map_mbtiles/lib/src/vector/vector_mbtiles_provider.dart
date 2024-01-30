import 'dart:typed_data';

import 'package:mbtiles/mbtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

/// MBTiles raster TileProvider, use for `pbf` tiles.
class VectorMBTilesProvider extends VectorTileProvider {
  /// MBTiles database
  final MBTiles mbtiles;

  /// The minimum zoom level that is supported by the MBTiles file
  final int minZoom;

  /// The maximum zoom level that is supported by the MBTiles file
  final int maxZoom;

  /// Create a new [VectorMBTilesProvider] and pass it to the flutter_map
  /// vector plugin vector_map_tiles.
  VectorMBTilesProvider({
    required this.mbtiles,
    required this.minZoom,
    required this.maxZoom,
  });

  @override
  int get maximumZoom => maxZoom;

  @override
  int get minimumZoom => minZoom;

  @override
  Future<Uint8List> provide(TileIdentity tile) async {
    final tmsY = ((1 << tile.z) - 1) - tile.y;
    final bytes = mbtiles.getTile(tile.z, tile.x, tmsY);
    if (bytes != null) return bytes;
    throw Exception(
      'Tile could not be found in MBTiles '
      '(z:${tile.z}, x:${tile.x}, y:${tile.y})',
    );
  }
}

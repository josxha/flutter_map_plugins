/*
import 'dart:typed_data';

import 'package:mbtiles/mbtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

/// MBTiles raster TileProvider, use for `pbf` tiles.
class MbTilesVectorTileProvider extends VectorTileProvider {
  /// Create a new [MbTilesVectorTileProvider] and pass it to the flutter_map
  /// vector plugin vector_map_tiles.
  ///
  /// [minimumZoom] defaults to the minimum zoom of the mbtiles metadata.
  ///
  /// [maximumZoom] defaults to the maximum zoom of the mbtiles metadata.
  MbTilesVectorTileProvider({
    required this.mbtiles,
    int? minimumZoom,
    int? maximumZoom,
    @Deprecated(
      'This option is no longer used and will get removed in a future update.',
    )
    this.silenceTileNotFound = false,
  }) {
    this.minimumZoom = minimumZoom ?? metadata.minZoom?.truncate() ?? 0;
    this.maximumZoom = maximumZoom ?? metadata.maxZoom?.truncate() ?? 16;
  }

  /// MBTiles database
  final MbTiles mbtiles;

  /// Get the metadata of the [MbTiles] archive.
  MbTilesMetadata get metadata => mbtiles.getMetadata();

  /// Set to true if you want to silence exceptions that would be thrown if a
  /// tile does not exist in the mbtiles file.
  ///
  /// By default this is disabled in debug mode and enabled else.
  @Deprecated(
    'This option is no longer used and will get removed in a future update.',
  )
  final bool silenceTileNotFound;

  /// The minimum zoom level
  @override
  late final int minimumZoom;

  /// The maximum zoom level, higher zoom level get "over-zoomed"
  @override
  late final int maximumZoom;

  @override
  Future<Uint8List> provide(TileIdentity tile) async {
    final tmsY = ((1 << tile.z) - 1) - tile.y;
    final bytes = mbtiles.getTile(z: tile.z, x: tile.x, y: tmsY);

    if (bytes == null) {
      throw ProviderException(
        message: 'Tile not found: $tile',
        retryable: Retryable.none,
        statusCode: 404,
      );
    }

    return Uint8List.fromList(bytes);
  }

  @override
  TileOffset get tileOffset => TileOffset.DEFAULT;
}
*/

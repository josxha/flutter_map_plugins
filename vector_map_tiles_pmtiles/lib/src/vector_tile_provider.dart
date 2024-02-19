import 'package:flutter/foundation.dart';
import 'package:pmtiles/pmtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

/// Use this [VectorTileProvider] to provide vector or raster tiles from a
/// PMTiles archive.
///
class PmTilesVectorTileProvider extends VectorTileProvider {
  final PmTilesArchive archive;
  @override
  final TileProviderType type;

  /// Create a tile provider directly with a [PmTilesArchive] from the
  /// pmtiles package.
  PmTilesVectorTileProvider.fromArchive(this.archive,
      {this.type = TileProviderType.vector});

  /// Create a tile provider by specifying the source of the PMTiles file.
  ///
  /// [source] can either be a URL or path on your file system.
  static Future<PmTilesVectorTileProvider> fromSource(String source,
      {TileProviderType type = TileProviderType.vector}) async {
    final archive = await PmTilesArchive.from(source);
    return PmTilesVectorTileProvider.fromArchive(archive, type: type);
  }

  /// The maximum zoom level that the tile provider supports.
  @override
  int get maximumZoom => archive.maxZoom;

  /// The minimum zoom level that the tile provider supports.
  @override
  int get minimumZoom => archive.minZoom;

  /// Used by the vector_map_tiles package to request a specific tile
  @override
  Future<Uint8List> provide(TileIdentity tile) async {
    final tileId = ZXY(tile.z, tile.x, tile.y).toTileId();
    try {
      final data = await archive.tile(tileId);
      return Uint8List.fromList(data.bytes());
    } on TileNotFoundException {
      throw ProviderException(
          message: 'Not found: $tile',
          retryable: Retryable.none,
          statusCode: 404);
    }
  }
}

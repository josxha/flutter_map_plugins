import 'package:flutter/foundation.dart';
import 'package:pmtiles/pmtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

/// Use this [TileProvider] to provide raster tiles from a PMTiles archive.
///
/// Note that this tile provider only supports vector tiles (mvt / pbf).
class PmTilesVectorTileProvider extends VectorTileProvider {
  final PmTilesArchive archive;

  /// Create a tile provider directly with a [PmTilesArchive] from the
  /// pmtiles package.
  PmTilesVectorTileProvider.fromArchive(
    this.archive, {
    this.silenceTileNotFound = !kDebugMode,
  });

  /// Set to true if [TileNotFoundException]s should not be visible in the
  /// console.
  ///
  /// By default this is disabled in debug mode and enabled else.
  final bool silenceTileNotFound;

  /// Create a tile provider by specifying the source of the PMTiles file.
  ///
  /// [source] can either be a URL or path on your file system.
  static Future<PmTilesVectorTileProvider> fromSource(
    String source, {
    bool silenceTileNotFound = !kDebugMode,
  }) async {
    final archive = await PmTilesArchive.from(source);
    return PmTilesVectorTileProvider.fromArchive(
      archive,
      silenceTileNotFound: silenceTileNotFound,
    );
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
      if (silenceTileNotFound) {
        return Uint8List(0);
      } else {
        rethrow;
      }
    }
  }
}

import 'dart:typed_data';

import 'package:pmtiles/pmtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

/// Use this [TileProvider] to provide raster tiles from a PMTiles archive.
///
/// Note that this tile provider only supports vector tiles (mvt / pbf).
class PmTilesVectorTileProvider extends VectorTileProvider {
  final PmTilesArchive archive;

  /// Create a tile provider directly with a [PmTilesArchive] from the
  /// pmtiles package.
  PmTilesVectorTileProvider.fromArchive(this.archive);

  /// Create a tile provider by specifying the source of the PMTiles file.
  ///
  /// [source] can either be a URL or path on your file system.
  static Future<PmTilesVectorTileProvider> fromSource(String source) async {
    final archive = await PmTilesArchive.from(source);
    return PmTilesVectorTileProvider.fromArchive(archive);
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
    final data = await archive.tile(tileId);
    return Uint8List.fromList(data.bytes());
  }
}

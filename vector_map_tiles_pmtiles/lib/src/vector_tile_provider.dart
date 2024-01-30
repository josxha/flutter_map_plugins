import 'dart:typed_data';

import 'package:pmtiles/pmtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';

class PmTilesVectorTileProvider extends VectorTileProvider {
  final PmTilesArchive archive;

  PmTilesVectorTileProvider.fromArchive(this.archive);

  static Future<PmTilesVectorTileProvider> fromSource(String source) async {
    final archive = await PmTilesArchive.from(source);
    return PmTilesVectorTileProvider.fromArchive(archive);
  }

  @override
  int get maximumZoom => archive.maxZoom;

  @override
  int get minimumZoom => archive.minZoom;

  @override
  Future<Uint8List> provide(TileIdentity tile) async {
    final tileId = ZXY(tile.z, tile.x, tile.y).toTileId();
    final data = await archive.tile(tileId);
    return Uint8List.fromList(data.bytes());
  }
}

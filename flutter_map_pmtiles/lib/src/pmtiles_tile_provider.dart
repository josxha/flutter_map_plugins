import 'package:flutter/painting.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_pmtiles/flutter_map_pmtiles.dart';
import 'package:pmtiles/pmtiles.dart';

class PmTilesTileProvider extends TileProvider {
  final PmTilesArchive archive;

  PmTilesTileProvider.fromArchive(this.archive);

  static Future<PmTilesTileProvider> fromSource(String source) async {
    final archive = await PmTilesArchive.from(source);
    return PmTilesTileProvider.fromArchive(archive);
  }

  @override
  bool get supportsCancelLoading => false;

  @override
  ImageProvider<Object> getImage(
    TileCoordinates coordinates,
    TileLayer options,
  ) {
    return PmTilesImageProvider(
      tileId: ZXY(coordinates.z, coordinates.x, coordinates.y).toTileId(),
      archive: archive,
    );
  }
}

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_pmtiles/flutter_map_pmtiles.dart';
import 'package:flutter_map_pmtiles/src/dio_at.dart';
import 'package:pmtiles/pmtiles.dart';

/// Use this [TileProvider] to provide raster tiles from a PMTiles archive.
///
/// Note that this tile provider does only support raster tiles
/// (no mvt / pbf).
class PmTilesTileProvider extends TileProvider {
  /// The used PMTiles archive
  final PmTilesArchive archive;

  /// Create a tile provider directly with a [PmTilesArchive] from the
  /// pmtiles package.
  PmTilesTileProvider.fromArchive(this.archive);

  /// Create a tile provider by specifying the source of the PMTiles file.
  /// [source] can either be a URL or path on your file system.
  ///
  /// Dio is not used if [source] is no URL.
  static Future<PmTilesTileProvider> fromSource(
    String source, {
    Dio? dio,
  }) async {
    final PmTilesArchive archive;
    if (source.startsWith("http://") || source.startsWith('https://')) {
      final readAt = DioAt(url: source, dio: dio ?? Dio());
      archive = await PmTilesArchive.fromReadAt(readAt);
    } else {
      final file = File(source);
      archive = await PmTilesArchive.fromFile(file);
    }
    return PmTilesTileProvider.fromArchive(archive);
  }

  @override
  bool get supportsCancelLoading => false;

  /// Used by flutter_map to request a specific image for a tile
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

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/src/mbtiles_image_provider.dart';
import 'package:mbtiles/mbtiles.dart';

/// MBTiles raster [TileProvider], use for `png`, `jpg` or `webp` tiles.
class MbTilesTileProvider extends TileProvider {
  /// Create a new [MbTilesTileProvider] instance with an MBTiles instance.
  MbTilesTileProvider({
    required this.mbtiles,
    this.silenceTileNotFound = !kDebugMode,
  }) : _createdInternally = false;

  /// Create a new [MbTilesTileProvider] instance by providing the path of the
  /// MBTiles file.
  /// The MBTiles database will be opened internally.
  MbTilesTileProvider.fromPath({
    required String path,
    this.silenceTileNotFound = !kDebugMode,
  })  : mbtiles = MbTiles(mbtilesPath: path),
        _createdInternally = true;

  /// MBTiles database
  final MbTiles mbtiles;

  /// If the MBTiles file was created internally, the connection gets closed
  /// on [dispose].
  final bool _createdInternally;

  /// Set to true if you don't want to throw exceptions for tiles that are
  /// not found.
  ///
  /// Defaults to false in debug mode and to true else.
  final bool silenceTileNotFound;

  @override
  ImageProvider getImage(TileCoordinates coordinates, TileLayer options) =>
      MbTilesImageProvider(
        coordinates: coordinates,
        mbtiles: mbtiles,
        silenceTileNotFound: silenceTileNotFound,
      );

  @override
  void dispose() {
    if (_createdInternally) mbtiles.dispose();
    super.dispose();
  }
}

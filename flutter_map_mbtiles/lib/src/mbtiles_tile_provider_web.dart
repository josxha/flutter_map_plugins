import 'package:flutter/painting.dart';
import 'package:flutter_map/flutter_map.dart';

/// Stub [MbTilesTileProvider] for web platforms.
///
/// MBTiles relies on native SQLite which is not available on web.
/// Use this package on Android, iOS, Linux, macOS, or Windows only.
///
/// Any call to [getImage] throws [UnsupportedError].
class MbTilesTileProvider extends TileProvider {
  /// Creates a stub tile provider for web.
  ///
  /// [mbtiles] and [silenceTileNotFound] are accepted for API compatibility
  /// only — [getImage] always throws [UnsupportedError] on web.
  MbTilesTileProvider({
    Object? mbtiles,
    this.silenceTileNotFound = true,
  }) : _source = mbtiles;

  /// Creates a stub tile provider from a file path for web.
  ///
  /// [path] and [silenceTileNotFound] are accepted for API compatibility
  /// only — [getImage] always throws [UnsupportedError] on web.
  MbTilesTileProvider.fromPath({
    required String path,
    this.silenceTileNotFound = true,
  }) : _source = path;

  final Object? _source;

  /// Whether tile-not-found errors are silenced.
  final bool silenceTileNotFound;

  @override
  ImageProvider<Object> getImage(
    TileCoordinates coordinates,
    TileLayer options,
  ) =>
      throw UnsupportedError(
        'flutter_map_mbtiles is not supported on web '
        '(source: $_source). '
        'MBTiles requires native SQLite, which is unavailable on web.',
      );
}

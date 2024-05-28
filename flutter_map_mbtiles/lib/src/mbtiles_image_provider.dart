import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mbtiles/mbtiles.dart';

/// Image provider with additional caching functionality
class MbTilesImageProvider extends ImageProvider<MbTilesImageProvider> {
  /// Default constructor for the [MbTilesImageProvider]
  const MbTilesImageProvider({
    required this.coordinates,
    required this.mbtiles,
    required this.silenceTileNotFound,
  });

  /// The tile coordinates of the requested tile image
  final TileCoordinates coordinates;

  /// MBTiles database
  final MbTiles mbtiles;

  /// Whether an exception should get thrown if a tile is not found.
  final bool silenceTileNotFound;

  @override
  Future<MbTilesImageProvider> obtainKey(ImageConfiguration configuration) {
    return Future.value(this);
  }

  @override
  ImageStreamCompleter loadImage(
    MbTilesImageProvider key,
    ImageDecoderCallback decode,
  ) {
    final chunkEvents = StreamController<ImageChunkEvent>();

    return MultiFrameImageStreamCompleter(
      // ignore: discarded_futures, not actually but the lint thinks so
      codec: _loadAsync(key, chunkEvents, decode),
      chunkEvents: chunkEvents.stream,
      scale: 1,
      debugLabel: coordinates.toString(),
      informationCollector: () => [
        DiagnosticsProperty('Current provider', key),
      ],
    );
  }

  Future<Codec> _loadAsync(
    MbTilesImageProvider key,
    StreamController<ImageChunkEvent> chunkEvents,
    ImageDecoderCallback decode,
  ) async {
    final tmsY = ((1 << coordinates.z) - 1) - coordinates.y;
    final bytes = mbtiles.getTile(z: coordinates.z, x: coordinates.x, y: tmsY);
    if (bytes == null) {
      if (silenceTileNotFound) {
        return decode(
          await ImmutableBuffer.fromUint8List(TileProvider.transparentImage),
        );
      }
      throw Exception(
        'Tile could not be found in MBTiles '
        '(z:${coordinates.z}, x:${coordinates.x}, y:${coordinates.y})',
      );
    }
    return decode(await ImmutableBuffer.fromUint8List(bytes));
  }
}

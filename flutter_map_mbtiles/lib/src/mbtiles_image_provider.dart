import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:mbtiles/mbtiles.dart';

/// Image provider with additional caching functionality
class MbTilesImageProvider extends ImageProvider<MbTilesImageProvider> {
  /// The tile coordinates of the requested tile image
  final TileCoordinates coordinates;

  /// MBTiles database
  final MBTiles mbtiles;

  /// Default constructor for the [MbTilesImageProvider]
  MbTilesImageProvider({
    required this.coordinates,
    required this.mbtiles,
  });

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
    final bytes = mbtiles.getTile(coordinates.z, coordinates.x, tmsY);
    if (bytes == null) {
      throw Exception(
        'Tile could not be found in MBTiles '
        '(z:${coordinates.z}, x:${coordinates.x}, y:${coordinates.y})',
      );
    }
    return decode(await ImmutableBuffer.fromUint8List(bytes));
  }
}

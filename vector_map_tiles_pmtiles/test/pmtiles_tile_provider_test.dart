import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:pmtiles/pmtiles.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_map_tiles_pmtiles/src/vector_tile_provider.dart';

import 'integration_test.mocks.dart';

Future<void> main() async {
  test('Create tile provider from archive', () async {
    final mockPmTiles = MockPmTilesArchive();
    final provider = PmTilesVectorTileProvider.fromArchive(mockPmTiles);
    expect(provider.archive, equals(mockPmTiles));
  });
  test('Create tile provider from source', () async {
    const source =
        'https://raw.githubusercontent.com/protomaps/PMTiles/main/spec/v3/protomaps(vector)ODbL_firenze.pmtiles';
    final provider = await PmTilesVectorTileProvider.fromSource(source);
    expect(
      provider.archive.centerPosition.latitude,
      closeTo(43.779779, 0.001),
    );
    expect(
      provider.archive.centerPosition.longitude,
      closeTo(11.2414827, 0.001),
    );
    expect(provider.silenceTileNotFound, isFalse);
    expect(provider.maximumZoom, equals(14));
    expect(provider.minimumZoom, equals(0));
    expect(
      await provider.provide(TileIdentity(0, 0, 0)),
      isA<Uint8List>(),
    );
    await expectLater(
      provider.provide(TileIdentity(10, 1, 1)),
      throwsA(isA<TileNotFoundException>()),
    );
  });
  test('Create silenced tile provider', () async {
    const source =
        'https://raw.githubusercontent.com/protomaps/PMTiles/main/spec/v3/protomaps(vector)ODbL_firenze.pmtiles';
    final provider = await PmTilesVectorTileProvider.fromSource(
      source,
      silenceTileNotFound: true,
    );
    expect(
      await provider.provide(TileIdentity(0, 0, 0)),
      isA<Uint8List>(),
    );
    await expectLater(
      await provider.provide(TileIdentity(10, 1, 1)),
      equals(Uint8List(0)),
    );
  });
}

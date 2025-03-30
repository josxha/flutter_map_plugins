/*
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_map_tiles_pmtiles/src/vector_tile_provider.dart';

import 'integration_test.mocks.dart';

Future<void> main() async {
  test('Create tile provider from archive', () async {
    final mockPmTiles = MockPmTilesArchive();
    final provider = PmTilesVectorTileProvider.fromArchive(mockPmTiles);
    expect(provider.archive, equals(mockPmTiles));
    expect(provider.type, TileProviderType.vector);
  });
  test('Create tile provider from source', () async {
    const source =
        'https://raw.githubusercontent.com/protomaps/PMTiles/main/spec/v3/protomaps(vector)ODbL_firenze.pmtiles';
    final provider = await PmTilesVectorTileProvider.fromSource(source);
    expect(provider.type, TileProviderType.vector);
    expect(
      provider.archive.centerPosition.latitude,
      closeTo(43.779779, 0.001),
    );
    expect(
      provider.archive.centerPosition.longitude,
      closeTo(11.2414827, 0.001),
    );
    expect(provider.maximumZoom, equals(14));
    expect(provider.minimumZoom, equals(0));
    expect(
      await provider.provide(TileIdentity(0, 0, 0)),
      isA<Uint8List>(),
    );
    await expectLater(
      provider.provide(TileIdentity(10, 1, 1)),
      throwsA(isA<ProviderException>()),
    );
  });
  test('Ignores tiles that are not found', () async {
    const source =
        'https://raw.githubusercontent.com/protomaps/PMTiles/main/spec/v3/protomaps(vector)ODbL_firenze.pmtiles';
    final provider = await PmTilesVectorTileProvider.fromSource(source);
    expect(
      await provider.provide(TileIdentity(0, 0, 0)),
      isA<Uint8List>(),
    );
    await expectLater(
      provider.provide(TileIdentity(10, 1, 1)),
      throwsA(isA<ProviderException>()),
    );
  });

  test('Accepts a type', () async {
    final mockPmTiles = MockPmTilesArchive();
    final provider = PmTilesVectorTileProvider.fromArchive(
      mockPmTiles,
      type: TileProviderType.raster,
    );
    expect(provider.type, TileProviderType.raster);
  });
}
*/

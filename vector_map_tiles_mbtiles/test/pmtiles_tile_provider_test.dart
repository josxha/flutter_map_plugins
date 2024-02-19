import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:mbtiles/mbtiles.dart';
import 'package:mockito/mockito.dart';
import 'package:vector_map_tiles/vector_map_tiles.dart';
import 'package:vector_map_tiles_mbtiles/src/vector_tile_provider.dart';

import 'utils/common.dart';

Future<void> main() async {
  test('Create tile provider from archive', () async {
    final mbTiles = createMockMbTiles();
    final provider = MbTilesVectorTileProvider(mbtiles: mbTiles);
    expect(provider.mbtiles, equals(mbTiles));
    expect(provider.type, TileProviderType.vector);
  });
  test('Create tile provider from source', () async {
    final mbtiles = MockMbTiles();
    when(mbtiles.getMetadata()).thenAnswer(
      (params) => const MbTilesMetadata(
        name: 'MockMbTiles',
        format: 'pbf',
        defaultCenter: LatLng(1.123, 1.123),
      ),
    );
    when(mbtiles.getTile(x: 0, y: 0, z: 0)).thenAnswer((_) => Uint8List(10));
    final provider = MbTilesVectorTileProvider(mbtiles: mbtiles);
    expect(provider.type, TileProviderType.vector);
    expect(
      provider.mbtiles.getMetadata().defaultCenter?.latitude,
      closeTo(1.123, 0.001),
    );
    expect(
      provider.mbtiles.getMetadata().defaultCenter?.longitude,
      closeTo(1.123, 0.001),
    );
    expect(provider.maximumZoom, equals(16)); // default if not set
    expect(provider.minimumZoom, equals(0)); // default if not set
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
    final mbtiles = createMockMbTiles();
    when(mbtiles.getTile(x: 0, y: 0, z: 0))
        .thenAnswer((params) => Uint8List(10));
    when(mbtiles.getTile(x: 10, y: 1, z: 1)).thenAnswer((params) => null);

    final provider = MbTilesVectorTileProvider(mbtiles: mbtiles);
    await expectLater(
      await provider.provide(TileIdentity(0, 0, 0)),
      isA<Uint8List>(),
    );
    /*await expectLater(
      await provider.provide(TileIdentity(1, 10, 1)),
      throwsA(isA<ProviderException>()),
    );*/
  });
}

import 'package:flutter_map_pmtiles/flutter_map_pmtiles.dart';
import 'package:flutter_test/flutter_test.dart';

import 'integration_test.mocks.dart';

Future<void> main() async {
  test('Create tile provider from archive', () async {
    final mockPmTiles = MockPmTilesArchive();
    final provider = PmTilesTileProvider.fromArchive(mockPmTiles);
    expect(provider.archive, equals(mockPmTiles));
  });
  test('Create tile provider from source', () async {
    const source =
        'https://raw.githubusercontent.com/protomaps/PMTiles/main/spec/v3/stamen_toner(raster)CC-BY%2BODbL_z3.pmtiles';
    final provider = await PmTilesTileProvider.fromSource(source);
    expect(provider.archive.centerPosition.latitude, closeTo(0, 0.01));
    expect(provider.archive.centerPosition.longitude, closeTo(0, 0.01));
  });
}

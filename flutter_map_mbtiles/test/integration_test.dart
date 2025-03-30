import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mbtiles/mbtiles.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<MbTiles>()])
import 'integration_test.mocks.dart';
import 'utils/test_app.dart';

Future<void> main() async {
  testWidgets('FlutterMap with MbTilesTileProvider', (tester) async {
    final mbtiles = MockMbTiles();
    when(mbtiles.getMetadata()).thenAnswer(
      (_) => const MbTilesMetadata(name: 'MockMbTiles', format: 'png'),
    );
    when(mbtiles.getTile(z: anyNamed('z'), x: anyNamed('x'), y: anyNamed('y')))
        .thenAnswer((_) => TileProvider.transparentImage);
    await tester.pumpWidget(TestApp(mbtiles: mbtiles));
    await tester.pumpAndSettle();
  });
}

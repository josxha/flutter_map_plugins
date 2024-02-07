import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_mbtiles/flutter_map_mbtiles.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<MBTiles>()])
import 'integration_test.mocks.dart';
import 'utils/test_app.dart';

Future<void> main() async {
  testWidgets('FlutterMap with MbTilesTileProvider', (tester) async {
    final mbtiles = MockMBTiles();
    when(mbtiles.getMetadata())
        .thenAnswer((_) => MBTilesMetadata(name: 'MockMBTiles', format: 'png'));
    when(mbtiles.getTile(captureAny, captureAny, captureAny))
        .thenAnswer((_) => TileProvider.transparentImage);
    await tester.pumpWidget(TestApp(mbtiles: mbtiles));
    await tester.pumpAndSettle();
  });
}

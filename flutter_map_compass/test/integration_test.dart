import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/test_app.dart';

Future<void> main() async {
  testWidgets('FlutterMap with MapCompass widgets', (tester) async {
    final mapController = MapController();
    const cupertinoCompassKey = ValueKey('cupertino key');
    const customCompassKey = ValueKey('custom key');
    await tester.pumpWidget(
      TestApp(
        mapController: mapController,
        cupertinoCompassKey: cupertinoCompassKey,
        customCompassKey: customCompassKey,
      ),
    );
    await tester.pumpAndSettle();
    expect(mapController.camera.rotation, closeTo(0, 0.001));

    mapController.rotate(181);
    await tester.pumpAndSettle(const Duration(milliseconds: 10));
    expect(mapController.camera.rotation, closeTo(181, 0.001));

    final inkWell = find.byType(InkWell).evaluate().first.widget as InkWell;
    inkWell.onTap!();
    await tester.pumpAndSettle();
    expect(mapController.camera.rotation, closeTo(360, 0.001));
  });
}

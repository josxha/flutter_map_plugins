import 'package:flutter/widgets.dart';
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders nothing outside of a MapLibreMap', (tester) async {
    const childKey = ValueKey('child');
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: FlutterMapAdapter(child: SizedBox(key: childKey)),
      ),
    );
    expect(find.byKey(childKey), findsNothing);
  });
}

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class PerfOverlay extends StatelessWidget {
  const PerfOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) return const SizedBox.shrink();
    return Positioned(
      bottom: 16,
      left: 0,
      right: 0,
      child: PerformanceOverlay.allEnabled(),
    );
  }
}

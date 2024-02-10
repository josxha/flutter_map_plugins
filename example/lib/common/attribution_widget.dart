import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:url_launcher/url_launcher_string.dart';

class OsmAttributionWidget extends StatelessWidget {
  const OsmAttributionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleAttributionWidget(
      onTap: () => launchUrlString('https://openstreetmap.org/copyright'),
      source: const Text('OpenStreetMap contributors'),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';

class TranslucentLayer extends StatelessWidget {
  final double opacity;

  const TranslucentLayer({super.key, this.opacity = 0.2});

  @override
  Widget build(BuildContext context) {
    return TileLayer(
      urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
      tileBuilder: (context, tileWidget, tile) => Stack(
        children: [
          Opacity(opacity: opacity, child: tileWidget),
          Text(
            '${tile.coordinates.z}/${tile.coordinates.x}/${tile.coordinates.y}',
          ),
        ],
      ),
    );
  }
}

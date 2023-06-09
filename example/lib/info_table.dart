import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  const InfoTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Table(
        children: const [
          TableRow(
            children: [
              Text('Test'),
            ],
          )
        ],
      ),
    );
  }
}

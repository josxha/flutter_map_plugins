import 'package:flutter/material.dart';

class InfoTable extends StatelessWidget {
  const InfoTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          Text('Test'),
        ],)
      ],
    );
  }
}

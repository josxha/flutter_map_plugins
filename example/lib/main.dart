import 'package:flutter/material.dart';
import 'package:flutter_map_plugins_example/flutter_map_vector/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_map_plugins',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: Material(child: FlutterMapVectorPage()),
    );
  }
}

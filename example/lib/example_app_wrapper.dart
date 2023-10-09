import 'package:flutter/material.dart';
import 'package:flutter_map_cache_example/connectivity_icon.dart';

class ExampleAppWrapper extends StatelessWidget {
  final Widget child;

  const ExampleAppWrapper({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterMap Cache',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterMap Cache'),
          actions: const [ConnectivityIcon()],
        ),
        body: child,
      ),
    );
  }
}

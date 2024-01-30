import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityIcon extends StatelessWidget {
  const ConnectivityIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final connectivity = Connectivity();
    return FutureBuilder<ConnectivityResult>(
      future: connectivity.checkConnectivity(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const SizedBox.shrink();
        }
        return StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          initialData: snapshot.data,
          builder: (context, snapshot) => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: switch (snapshot.data) {
              ConnectivityResult.none => const Icon(
                  Icons.signal_wifi_connected_no_internet_4_outlined,
                  color: Colors.red,
                ),
              null => const SizedBox.shrink(),
              _ => const SizedBox.shrink(),
            },
          ),
        );
      },
    );
  }
}

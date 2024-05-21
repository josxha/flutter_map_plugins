import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityIcon extends StatelessWidget {
  const ConnectivityIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final connectivity = Connectivity();
    return FutureBuilder<List<ConnectivityResult>>(
      future: connectivity.checkConnectivity(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const SizedBox.shrink();
        }
        return StreamBuilder<List<ConnectivityResult>>(
          stream: connectivity.onConnectivityChanged,
          initialData: snapshot.data,
          builder: (context, snapshot) {
            if (snapshot.data case final List<ConnectivityResult> data) {
              if (data.any((e) => e != ConnectivityResult.none)) {
                return const SizedBox.shrink();
              } else {
                return const Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: Icon(
                    Icons.signal_wifi_connected_no_internet_4_outlined,
                    color: Colors.red,
                  ),
                );
              }
            }
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:githubshow/common/fluter_loading.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('settings Screen')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => context.go('/details'),
            child: const Text('Go back to the settings screen'),
          ),
          ElevatedButton(
            onPressed: () {
              FlutterLoading.show();
            },
            child: const Text(' FlutterLoading.show();'),
          ),
          ElevatedButton(
            onPressed: () {
              FlutterLoading.hide();
            },
            child: const Text('  FlutterLoading.hide();'),
          ),
        ],
      ),
    );
  }
}

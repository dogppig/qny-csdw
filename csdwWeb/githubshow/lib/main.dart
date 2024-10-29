import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:githubshow/utils/key_utils.dart';
import './router/router.dart';
import 'common/fluter_loading.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await   initSystemTray();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));

  doWhenWindowReady(() {
    final win = appWindow;
    const initialSize = Size(960, 720);
    win.minSize = initialSize;
    win.size = initialSize;
    win.alignment = Alignment.center;
    win.title = "Custom window with Flutter";
    win.show();
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterLoading.context = context;
    return Scaffold(
        body: FluentApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: router,
    ));
  }
}

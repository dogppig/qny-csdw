import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:githubshow/page/view/window_title_barbox_height.dart';
import 'package:githubshow/utils/logger.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  final Widget child;

  const HomeScreen({super.key, required this.child});

  @override
  State<HomeScreen> createState() => _nameState();
}

class _nameState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WindowTitleBarBoxH(
            child: Container(
              height: 55,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[Colors.red, Colors.blue])),
              child: Row(
                children: [
                  Expanded(
                    child: MoveWindow(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 16),
                            child: Icon(Icons.ac_unit ,size: 25,),
                          )
                        ],
                      ),
                    ),
                  ),
                  MinimizeWindowButton(),
                  MaximizeWindowButton(),
                  CloseWindowButton(),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Container(
                  width: 200,
                  decoration: const BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 1, color: Colors.black12))),
                  height: double.infinity,
                  child: ListView(children: [
                    ListTile(
                      title: const Text("详情"),
                      onTap: () {
                        Logger().info('跳转详情页');
                        context.goNamed('details');
                      },
                    ),
                    // ListTile(
                    //   title: const Text("用户"),
                    //   onTap: () {
                    //     context.go("/user");
                    //   },
                    // ),
                    ListTile(
                      title: const Text("设置"),
                      onTap: () {
                        Logger().info('跳转设置页');
                        context.go("/setting");
                      },
                    ),
                  ])),
              Expanded(
                  child: Container(
                color: Colors.yellow,
                height: double.infinity,
                child: widget.child,
              ))
            ],
          ))
        ],
      ),
    );
  }
}

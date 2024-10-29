import 'package:flutter/material.dart';

class FlutterLoading {
  static BuildContext? context;
  static bool loadingDialogShow = false;

  static show() async {
    await Future.delayed(Duration.zero);
    try {
      if (context != null && loadingDialogShow == false) {
        loadingDialogShow = true;
        showDialog<bool>(
            barrierColor: Colors.transparent,
            context: context!,
            useRootNavigator: false,
            builder: (BuildContext context) {
              return Material(
                color: Colors.transparent,
                child: Center(child:
                LoadingWidget(),),
              );
            });
        Future.delayed(Duration(milliseconds: 1000),(){hide();});
      }
    } catch (e) {
      //无需处理此错误
      print(e);
    }
  }

  static hide() async {
    await Future.delayed(Duration.zero);
    try {
      if (context != null) {
        if (loadingDialogShow) {
          loadingDialogShow = false;
          Navigator.pop(context!);
        }
      }
    } catch (e) {
      //无需处理此错误
      print(e);
    }
  }

  static showLoading(Widget child) async {
    await Future.delayed(Duration.zero);
    try {
      if (context != null && loadingDialogShow == false) {
        loadingDialogShow = true;
        showDialog<bool>(
            barrierColor: Colors.transparent,
            context: context!,
            useRootNavigator: false,
            builder: (BuildContext context) {
              return LoadingWidget(
                child: child,
              );
            });
      }
    } catch (e) {
      //无需处理此错误
      print(e);
    }
  }
}

class LoadingWidget extends StatelessWidget {
  Widget? child;

  LoadingWidget({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return child ??
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue,
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '正在加载中',
                style: TextStyle(color: Color(0x3f333333)),
              )
            ],
          ),
        );
  }
}

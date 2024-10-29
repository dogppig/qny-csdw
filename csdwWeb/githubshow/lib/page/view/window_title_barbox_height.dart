

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WindowTitleBarBoxH extends WindowTitleBarBox {
  final Widget? child;
   WindowTitleBarBoxH({super.key, this.child});

   @override
   Widget build(BuildContext context) {
     if (kIsWeb) {
       return Container();
     }
     return IntrinsicHeight(child:  this.child ?? Container(),);
   }
}

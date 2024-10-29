import 'package:flutter/material.dart';

class ScaleAnimateWidget extends StatefulWidget {
  final Widget? child;
  ScaleAnimateWidget({
    Key? key,
    this.child,
  }) : super(key: key);
  @override
  _BouncingWidgetState createState() => _BouncingWidgetState();
}

class _BouncingWidgetState extends State<ScaleAnimateWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    // 定义缩放动画
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        _animationController
    );

    _playAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _playAnimation() async {
    try {
      await _animationController.forward();
    } on TickerCanceled {}
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}

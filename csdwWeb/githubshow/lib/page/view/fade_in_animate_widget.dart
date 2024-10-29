
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class FadeInAnimateWidget extends StatefulWidget {
  final Widget  child;
  const FadeInAnimateWidget({super.key , required this.child});

  @override
  State<FadeInAnimateWidget> createState() => _FadeInAnimateWidgetState();
}

class _FadeInAnimateWidgetState extends State<FadeInAnimateWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    // 定义渐入渐出
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
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
      scale: _animation,
      child: widget.child,
    );
  }
}

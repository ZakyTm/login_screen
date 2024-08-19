import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  final Widget child;
  final Duration duration;

  FadeAnimation(double i,
      {required this.child, this.duration = const Duration(milliseconds: 500)});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: duration,
      builder: (context, double opacity, child) {
        return Opacity(
          opacity: opacity,
          child: child,
        );
      },
      child: child,
    );
  }
}

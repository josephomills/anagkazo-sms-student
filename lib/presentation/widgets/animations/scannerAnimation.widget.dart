import 'package:flutter/material.dart';

class ScannerAnimatedWidget extends AnimatedWidget {
  final bool stopped;
  final double width;

  const ScannerAnimatedWidget({
    Key? key,
    required this.stopped,
    required this.width,
    required Animation<double> animation,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    final scorePosition =
        animation.value * (MediaQuery.of(context).size.height - 132);

    Color color1 = const Color(0x5532CD32);
    Color color2 = const Color(0x0032CD32);

    if (animation.status == AnimationStatus.reverse) {
      color1 = const Color(0x0032CD32);
      color2 = const Color(0x5532CD32);
    }

    return Positioned(
      bottom: scorePosition,
      child: Opacity(
        opacity: (stopped) ? 0.0 : 1.0,
        child: Container(
          height: 60.0,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.1, 0.9],
              colors: [color1, color2],
            ),
          ),
        ),
      ),
    );
  }
}

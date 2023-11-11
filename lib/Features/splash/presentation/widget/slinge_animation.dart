
import 'package:flutter/material.dart';

class TextSlineAnimation extends StatelessWidget {
  const TextSlineAnimation({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text('read free books and for free  ',
                textAlign: TextAlign.center),
          );
        });
  }
}

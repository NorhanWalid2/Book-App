import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slideAnimation,
  });

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slideAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slideAnimation,
            child: const Text(
              "Feel Free",
              style: TextStyle(color: Color(0xff493628), fontSize: 20),
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}

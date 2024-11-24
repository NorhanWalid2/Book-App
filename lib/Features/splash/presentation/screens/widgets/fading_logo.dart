import 'package:book_app/core/utils/asset.dart';
import 'package:flutter/material.dart';

class FadingLogo extends StatelessWidget {
  const FadingLogo({
    super.key,
    required this.opacityAnimation,
  });

  final Animation<double> opacityAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: opacityAnimation,
        builder: (context, _) {
          return FadeTransition(
            opacity: opacityAnimation,
            child: Image.asset(
              AssetData.logo,
            ),
          );
        });
  }
}

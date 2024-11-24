import 'dart:ffi';

import 'package:book_app/Features/splash/presentation/screens/widgets/fading_logo.dart';
import 'package:book_app/Features/splash/presentation/screens/widgets/sliding_text.dart';
import 'package:book_app/core/utils/asset.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> opacityAnimation;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    slideAnimation = Tween<Offset>(
      begin: Offset(0, 4), // Starts off-screen at the bottom
      end: Offset(0, 0), // Ends at the center
    ).animate(
      controller,
    );
    controller.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadingLogo(opacityAnimation: opacityAnimation),
        SlidingText(slideAnimation: slideAnimation),
      ],
    );
  }
}

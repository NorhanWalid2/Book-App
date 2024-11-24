import 'package:book_app/Features/home/presentation/screens/home_screen.dart';
import 'package:book_app/Features/splash/presentation/screens/widgets/fading_logo.dart';
import 'package:book_app/Features/splash/presentation/screens/widgets/sliding_text.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
    initFadingAndSlidingAnimation();
    navigateToHome();
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

  void initFadingAndSlidingAnimation() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, 4), // Starts off-screen at the bottom
      end: const Offset(0, 0), // Ends at the center
    ).animate(
      controller,
    );
    controller.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(() => const HomeScreen(),
          transition: Transition.leftToRight,
          duration: const Duration(microseconds: 250));
    });
  }
}

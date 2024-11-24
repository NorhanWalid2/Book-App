import 'package:book_app/Features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
        child: Column(
          children: [
            CustomAppBar(),
          ],
        ),
      );
  }
}
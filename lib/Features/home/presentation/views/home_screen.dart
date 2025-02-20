import 'package:book_app/Features/home/presentation/views/widgets/home_screen_body.dart';
import 'package:book_app/core/widgets/custom_loading_indicator_Best_seller.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: HomeScreenBody()),
    );
  }
}

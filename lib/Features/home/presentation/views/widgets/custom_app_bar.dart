import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/BooKZ.png',
          height: 80,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchScreen);
          },
          icon: const Icon(FontAwesomeIcons.magnifyingGlass,
              size: 25, color: Color(0xff493628)),
        )
      ],
    );
  }
}

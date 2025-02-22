import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarSearch extends StatelessWidget {
  const CustomAppBarSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/BooKZ.png',
          height: 80,
        ),
        //const Spacer(),
        IconButton(
          icon: const Icon(
            Icons.close,
            color: Color(0xff493628),
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        // IconButton(
        //   onPressed: () {
        //     context.push(AppRouter.kSearchScreen, extra: bookModel);
        //   },
        //   icon: const Icon(FontAwesomeIcons.magnifyingGlass,
        //       size: 25, color: Color(0xff493628)),
        // )
      ],
    );
  }
}

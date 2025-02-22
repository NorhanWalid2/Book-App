import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, this.bookModel});
  final BookModel? bookModel;
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
            context.push(AppRouter.kSearchScreen, extra: bookModel);
          },
          icon: const Icon(FontAwesomeIcons.magnifyingGlass,
              size: 25, color: Color(0xff493628)),
        )
      ],
    );
  }
}

import 'package:book_app/Features/home/presentation/screens/widgets/books_list_view.dart';
import 'package:book_app/Features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:book_app/Features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
      child: Column(
        children: [
          CustomAppBar(),
          BooksListView(),
        ],
      ),
    );
  }
}

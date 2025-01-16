import 'package:book_app/Features/home/presentation/screens/widgets/best_seller_view_item.dart';
import 'package:book_app/Features/home/presentation/screens/widgets/books_list_view.dart';
import 'package:book_app/Features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:book_app/Features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textstyle18,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerViewItem(),
        ],
      ),
    );
  }
}

import 'package:book_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';

import 'package:book_app/Features/home/presentation/views/widgets/books_list_view.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_app_bar.dart';

import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              BooksListView(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Best Seller',
                  style: Styles.textstyle18,
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding:   EdgeInsets.symmetric(horizontal: 20.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}

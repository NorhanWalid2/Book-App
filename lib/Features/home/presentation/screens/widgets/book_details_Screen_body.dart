import 'package:book_app/Features/home/presentation/screens/widgets/book_rating.dart';
import 'package:book_app/Features/home/presentation/screens/widgets/custom_book_details_appbar.dart';
import 'package:book_app/Features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          const CustomBookDetalsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.23),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: Styles.textstyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Nopav walid',
            style: Styles.textstyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.32),
            child: const BookRating(),
          ),
          
        ],
      ),
    );
  }
}

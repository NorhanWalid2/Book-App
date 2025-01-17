import 'package:book_app/Features/home/presentation/screens/widgets/custom_book_details_appbar.dart';
import 'package:book_app/Features/home/presentation/screens/widgets/custom_book_item.dart';
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
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookItem(),
          )
        ],
      ),
    );
  }
}

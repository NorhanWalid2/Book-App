import 'package:book_app/Features/home/presentation/screens/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [CustomBookDetalsAppBar()],
      ),
    );
  }
}

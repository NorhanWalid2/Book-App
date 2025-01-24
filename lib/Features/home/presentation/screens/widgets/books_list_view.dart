import 'package:book_app/Features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
   BooksListView({super.key, required this.size});
  double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * size,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 16.0, right: 10),
            child: CustomBookItem(),
          );
        },
      ),
    );
  }
}

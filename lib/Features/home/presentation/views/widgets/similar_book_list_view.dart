import 'package:book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 16.0, right: 10),
            child: CustomBookItem(
              imageUrl:
                  'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg',
            ),
          );
        },
      ),
    );
  }
}

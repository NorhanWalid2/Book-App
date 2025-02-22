import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_actions.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/Features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                const CustomBookDetalsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.23),
                  child: CustomBookItem(
                    imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
                  ),
                ),
                const SizedBox(
                  height: 43,
                ),
                Text(
                  bookModel.volumeInfo.title!,
                  style: Styles.textstyle30.copyWith(
                      fontWeight: FontWeight.bold, color:const Color(0xff493628)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: Styles.textstyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color:const Color(0xff493628)),
                ),
                const SizedBox(
                  height: 18,
                ),
                BookRating(count: bookModel.volumeInfo.pageCount!),
                const SizedBox(
                  height: 20,
                ),
                BookActions(bookModel: bookModel,),
                const SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can Also Like',
                    style: Styles.textstyle14
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                SimilarBookListView(
                  bookModel: bookModel,
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

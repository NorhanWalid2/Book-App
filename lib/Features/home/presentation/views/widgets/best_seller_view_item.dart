import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsScreen,
          extra: bookModel, // تمرير بيانات الكتاب
        );
      },
      child: Container(
        padding:const EdgeInsets.all(10),
        height: 160,
        decoration: BoxDecoration(
          color:const Color(0xffD6C0B3),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 116, 113, 113).withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset:const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.6 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        NetworkImage(bookModel.volumeInfo.imageLinks.thumbnail),
                  ),
                ),
              ),
            ),
           const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textstyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textstyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookModel.saleInfo!.saleability == "NOT_FOR_SALE"
                            ? "Free"
                            : '50\$',
                        style: Styles.textstyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      BookRating(count: bookModel.volumeInfo.pageCount!),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

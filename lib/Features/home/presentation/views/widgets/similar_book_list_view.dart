import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/core/widgets/Custom_Shimmer_featured_books.dart';
import 'package:book_app/core/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.16,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.Books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 16.0, right: 10),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(
                        AppRouter.kBookDetailsScreen,
                        extra: state.Books[index],
                      ); // تم
                    },
                    child: CustomBookItem(
                      imageUrl:
                          state.Books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBookFailure) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showSnackBar(context, state.errMessage, Colors.red);
          });
          return Center(
              child: Text(
            "${state.errMessage}",
            style: Styles.textstyle14,
          ));
        } else {
          return CustomShimmerFeaturedBooks();
        }
      },
    );
  }
}

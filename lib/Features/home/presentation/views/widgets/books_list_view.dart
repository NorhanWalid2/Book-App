import 'package:book_app/Features/home/data/models/book_model/volume_info.dart';
import 'package:book_app/Features/home/presentation/manager/featured_books_cubit/books_cubit_cubit.dart';
import 'package:book_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/core/widgets/custom_loading_indicator.dart';
import 'package:book_app/core/widgets/show_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooksCubitCubit, BooksCubitState>(
      builder: (context, state) {
        if (state is BooksCubitSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(top: 16.0, right: 10),
                  child: CustomBookItem(
                    imageUrl:
                        state.Books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is BooksCubitFailure) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            showSnackBar(context, state.errMessage, Colors.red);
          });
          return Center(
              child: Text(
            "${state.errMessage}",
            style: Styles.textstyle14,
          ));
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}

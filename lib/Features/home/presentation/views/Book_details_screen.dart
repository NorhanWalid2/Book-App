import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_details_Screen_body.dart';
import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  void initState() {
     BlocProvider.of<SimilarBookCubit>(context).FetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailsScreenBody(bookModel: widget.bookModel,)));
  }
}

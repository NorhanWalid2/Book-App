import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'books_cubit_state.dart';

class BooksCubitCubit extends Cubit<BooksCubitState> {
  BooksCubitCubit() : super(BooksCubitInitial());
}

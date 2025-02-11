part of 'books_cubit_cubit.dart';

sealed class BooksCubitState extends Equatable {
  const BooksCubitState();

  @override
  List<Object> get props => [];
}

final class BooksCubitInitial extends BooksCubitState {}

final class BooksCubitLoading extends BooksCubitState {}

final class BooksCubitFailure extends BooksCubitState {
  final String errMessage;

  BooksCubitFailure({required this.errMessage});
}

final class BooksCubitSuccess extends BooksCubitState {
  final List<BookModel> Books;

  BooksCubitSuccess(this.Books);
}

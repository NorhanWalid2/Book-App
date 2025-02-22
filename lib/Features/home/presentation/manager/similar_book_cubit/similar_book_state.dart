part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitial extends SimilarBookState {}
 final class SimilarBookLoading extends SimilarBookState {}
final class SimilarBookFailure extends SimilarBookState {
   final String errMessage;

  SimilarBookFailure({required this.errMessage});
}
 
 final class SimilarBookSucess extends SimilarBookState {
  final List<BookModel> Books;

  SimilarBookSucess({required this.Books});

 }

 

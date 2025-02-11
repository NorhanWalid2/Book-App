part of 'bset_seller_books_cubit_cubit.dart';

sealed class BsetSellerBooksCubitState extends Equatable {
  const BsetSellerBooksCubitState();

  @override
  List<Object> get props => [];
}

final class BsetSellerBooksCubitInitial extends BsetSellerBooksCubitState {}

final class BsetSellerBooksCubitLoading extends BsetSellerBooksCubitState {}

final class BsetSellerBooksCubitFailure extends BsetSellerBooksCubitState {
  final String errMessage;

  BsetSellerBooksCubitFailure({required this.errMessage});
}

final class BsetSellerBooksCubitSuccess extends BsetSellerBooksCubitState {
  final List<BookModel> Books;

  BsetSellerBooksCubitSuccess(this.Books);
}

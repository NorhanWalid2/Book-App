part of 'search_cubit_cubit.dart';

sealed class SearchCubitState extends Equatable {
  const SearchCubitState();

  @override
  List<Object> get props => [];
}

final class SearchCubitInitial extends SearchCubitState {}
final class SearchCubitLoading extends SearchCubitState {}
final class SearchCubitFailure extends SearchCubitState {
  final String errMessage;

  SearchCubitFailure({required this.errMessage});
}
final class SearchCubitSucess extends SearchCubitState {
  final List<BookModel> Books;

  SearchCubitSucess({required this.Books});
}

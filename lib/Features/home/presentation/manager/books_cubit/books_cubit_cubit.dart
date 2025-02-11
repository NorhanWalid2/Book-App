import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'books_cubit_state.dart';

class BooksCubitCubit extends Cubit<BooksCubitState> {
  BooksCubitCubit(this.homeRepo) : super(BooksCubitInitial());
  final HomeRepo homeRepo;
  Future<void> FetchFeaturedBooks() async {
    emit(BooksCubitLoading());
    var result = await homeRepo.fetchFeatureBook();
    result.fold((failure) {
      emit(BooksCubitFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(BooksCubitSuccess(books));
    });
  }
}

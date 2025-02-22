import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/search/data/repos/repoSearch.dart';
import 'package:equatable/equatable.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this.searchRepo) : super(SearchCubitInitial());
  final SearchRepo searchRepo;
  Future<void> FetchSearchedBooks({required String SearchText}) async {
    emit(SearchCubitLoading());
    var result = await searchRepo.fetchSearchedBooks(SearchText: SearchText);
    result.fold((failure) {
      emit(SearchCubitFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(SearchCubitSucess(Books: books));
    });
  }
}

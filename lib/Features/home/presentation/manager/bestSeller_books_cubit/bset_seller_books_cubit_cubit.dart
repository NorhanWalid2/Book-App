import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repos.dart';
import 'package:equatable/equatable.dart';

part 'bset_seller_books_cubit_state.dart';

class BsetSellerBooksCubitCubit extends Cubit<BsetSellerBooksCubitState> {
  BsetSellerBooksCubitCubit(this.homeRepo)
      : super(BsetSellerBooksCubitInitial());
  final HomeRepo homeRepo;
  Future<void> FetchBestSellerBooks() async {
    emit(BsetSellerBooksCubitLoading());
    var result = await homeRepo.fetchFeatureBook();
    result.fold((failure) {
      emit(BsetSellerBooksCubitFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(BsetSellerBooksCubitSuccess(books));
    });
  }
}

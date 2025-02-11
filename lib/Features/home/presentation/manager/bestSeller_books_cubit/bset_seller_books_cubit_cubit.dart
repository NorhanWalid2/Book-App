import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'bset_seller_books_cubit_state.dart';

class BsetSellerBooksCubitCubit extends Cubit<BsetSellerBooksCubitState> {
  BsetSellerBooksCubitCubit() : super(BsetSellerBooksCubitInitial());
}

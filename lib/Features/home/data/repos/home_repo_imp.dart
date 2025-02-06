import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repos.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImp({required this.apiServices});
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook() async {
    try {
      var data = await apiServices.get(
          endpoint: 'volumes?q=programming&orderBy=newest');
      List<BookModel> Books = [];
      for (var item in data['item']) {
        Books.add(BookModel.fromJson(item));
      }
      return right(Books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBook() {
    // TODO: implement fetchFeatureBook
    throw UnimplementedError();
  }
}

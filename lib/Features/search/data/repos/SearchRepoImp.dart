import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repos.dart';
import 'package:book_app/Features/search/data/repos/repoSearch.dart';
import 'package:book_app/core/errors/failures.dart';
import 'package:book_app/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class Searchrepoimp implements SearchRepo {
  final ApiServices apiServices;

  Searchrepoimp({required this.apiServices});

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchedBooks(
      {required String SearchText}) async {
    try {
      var data = await apiServices.get(
          endpoint: 'volumes?q=$SearchText&orderBy=newest&sorting=relevance');
      List<BookModel> Books = [];
      for (var item in data['items']) {
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
}

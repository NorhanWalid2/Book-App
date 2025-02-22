import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repo_imp.dart';
import 'package:book_app/Features/home/data/repos/home_repos.dart';
import 'package:book_app/Features/search/data/repos/SearchRepoImp.dart';
import 'package:book_app/Features/search/data/repos/repoSearch.dart';
import 'package:book_app/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepo>(
    HomeRepoImp(
      apiServices: getIt.get<ApiServices>(),
    ),
  );
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      apiServices: getIt.get<ApiServices>(),
    ),
  );
  getIt.registerSingleton<SearchRepo>(
    Searchrepoimp(
      apiServices: getIt.get<ApiServices>(),
    ),
  );
  getIt.registerSingleton<Searchrepoimp>(
    Searchrepoimp(
      apiServices: getIt.get<ApiServices>(),
    ),
  );
  assert(getIt.isRegistered<HomeRepo>(), '❌ HomeRepo لم يتم تسجيله بشكل صحيح!');
}

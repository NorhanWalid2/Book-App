import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/data/repos/home_repos.dart';
import 'package:book_app/Features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:book_app/Features/home/presentation/views/Book_details_screen.dart';
import 'package:book_app/Features/home/presentation/views/home_screen.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_details_Screen_body.dart';
import 'package:book_app/Features/search/presentation/screens/search_screen.dart';
import 'package:book_app/Features/splash/presentation/screens/splash_screen.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/homeScreen';
  static const kBookDetailsScreen = '/bookDetailsScreen';
  static const kSearchScreen = '/searchScreen';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: kBookDetailsScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBookCubit(getIt.get<HomeRepo>()),
          child: BookDetailsScreen(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (context, state) => SearchScreen(),
      ),
    ],
  );
}

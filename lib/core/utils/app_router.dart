import 'package:book_app/Features/home/presentation/screens/Book_details_screen.dart';
import 'package:book_app/Features/home/presentation/screens/home_screen.dart';
import 'package:book_app/Features/search/presentation/screens/search_screen.dart';
import 'package:book_app/Features/splash/presentation/screens/splash_screen.dart';
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
        builder: (context, state) => BookDetailsScreen(),
      ),
      GoRoute(
        path: kSearchScreen,
        builder: (context, state) => SearchScreen(),
      ),
    ],
  );
}

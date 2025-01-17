import 'package:book_app/Features/home/presentation/screens/home_screen.dart';
import 'package:book_app/Features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeScreen = '/homeScreen';
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
    ],
  );
}

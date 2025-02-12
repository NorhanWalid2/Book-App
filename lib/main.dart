import 'package:book_app/Features/home/data/repos/home_repo_imp.dart';
import 'package:book_app/Features/home/presentation/manager/bestSeller_books_cubit/bset_seller_books_cubit_cubit.dart';
import 'package:book_app/Features/home/presentation/manager/featured_books_cubit/books_cubit_cubit.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BookApp());
}

class BookApp extends StatelessWidget {
  const BookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => BooksCubitCubit(getIt.get<HomeRepoImp>())
              ..FetchFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                BsetSellerBooksCubitCubit(getIt.get<HomeRepoImp>()))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

import 'package:book_app/Features/home/data/repos/home_repos.dart';
import 'package:book_app/Features/search/data/repos/repoSearch.dart';
import 'package:book_app/Features/search/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:book_app/Features/search/presentation/screens/widgets/search_screen_body.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (context) => SearchCubitCubit(getIt.get<SearchRepo>()),
        child: SearchScreenBody(),
      )),
    );
  }
}

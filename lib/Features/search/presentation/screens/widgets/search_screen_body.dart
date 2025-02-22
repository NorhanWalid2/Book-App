import 'package:book_app/Features/search/presentation/manager/search_cubit/search_cubit_cubit.dart';
import 'package:book_app/Features/search/presentation/screens/widgets/custom_app_bar.dart';
import 'package:book_app/Features/search/presentation/screens/widgets/custom_text_field.dart';
import 'package:book_app/Features/search/presentation/screens/widgets/search_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const  CustomAppBarSearch(),
                CustomTextField(
                  hint: 'Search',
                  //labeltextt: 'Search',
                  obscure: false,
                  icon: GestureDetector(
                    child:const Icon(FontAwesomeIcons.magnifyingGlass,
                        size: 20, color: Color(0xff493628)),
                  ),
                  onchange: (value) {
                    context
                        .read<SearchCubitCubit>()
                        .FetchSearchedBooks(SearchText: value);
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Results',
                  style: Styles.textstyle18.copyWith(
                      color: const Color.fromARGB(255, 108, 105, 105)),
                ),
              ],
            ),
          ),
        const  SliverFillRemaining(
            child: SearchListView(),
          )
        ],
      ),
    );
  }
}

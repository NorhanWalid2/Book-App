import 'package:book_app/Features/search/presentation/screens/widgets/custom_text_field.dart';
import 'package:book_app/Features/search/presentation/screens/widgets/search_list_view.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  hint: 'Search',
                  //labeltextt: 'Search',
                  obscure: false,
                  icon: Icon(FontAwesomeIcons.magnifyingGlass,
                      size: 20, color: Color(0xff493628)),
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
          SliverFillRemaining(
            child: SearchListView(),
          )
        ],
      ),
    );
  }
}

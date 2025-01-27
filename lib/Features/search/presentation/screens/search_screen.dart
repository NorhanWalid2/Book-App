import 'package:book_app/Features/search/presentation/screens/widgets/search_screen_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SearchScreenBody()),
    );
  }
}
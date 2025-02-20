import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/home/presentation/views/widgets/book_details_Screen_body.dart';
import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold
    ( 
      body: SafeArea(child: BookDetailsScreenBody( )));
  
  }
}

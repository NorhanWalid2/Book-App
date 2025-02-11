import 'package:book_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            topLeft: 20,
            topRight: 0,
            bottomLeft: 20,
            buttomRight: 0,
            backgroundColor: Colors.white,
            colorTextButton: Colors.black,
            textButton: '19.9 \$',
          ),
        ),
        Expanded(
          child: CustomButton(
            topLeft: 0,
            topRight: 20,
            bottomLeft: 0,
            buttomRight: 20,
            backgroundColor: Color.fromARGB(255, 98, 73, 45),
            colorTextButton: Colors.white,
            textButton: 'Free Preview',
          ),
        )
      ],
    );
  }
}

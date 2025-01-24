import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          size: 18,
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 237, 224, 106),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: Styles.textstyle16
              .copyWith(color: Color.fromARGB(255, 57, 42, 31)),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2022)',
          style: Styles.textstyle14
              .copyWith(color: Color.fromARGB(255, 60, 43, 30)),
        )
      ],
    );
  }
}

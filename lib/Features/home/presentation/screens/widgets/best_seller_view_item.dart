import 'package:book_app/Features/home/presentation/screens/widgets/book_rating.dart';
import 'package:book_app/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerViewItem extends StatelessWidget {
  const BestSellerViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/book1.PNG'),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    "That's what i do I Read and iI know Things uhweuf uefjhwil ijfwilf",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textstyle20.copyWith(
                      fontFamily: kGtSectraFine,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'J.K Rowling',
                  style: Styles.textstyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "99.9 \$",
                      style: Styles.textstyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

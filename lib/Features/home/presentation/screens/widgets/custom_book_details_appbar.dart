import 'package:flutter/material.dart';

class CustomBookDetalsAppBar extends StatelessWidget {
  const CustomBookDetalsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
        icon:const Icon(Icons.close),
        onPressed: () {},
      ),
      IconButton(
        icon:const Icon(
          Icons.shopping_cart_outlined,
          size: 35,
        ),
        onPressed: () {},
      ),
    ]);
  }
}

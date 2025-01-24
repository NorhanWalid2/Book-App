import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetalsAppBar extends StatelessWidget {
  const CustomBookDetalsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
        icon: const Icon(
          Icons.close,
          color: Color(0xff493628),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      IconButton(
        icon: const Icon(Icons.shopping_cart_outlined,
            size: 35, color: Color(0xff493628)),
        onPressed: () {},
      ),
    ]);
  }
}

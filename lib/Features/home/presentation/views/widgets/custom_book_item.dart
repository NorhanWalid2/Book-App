import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:   DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          const Positioned(
            bottom: 8,
            right: 8,
            child: Icon(
              Icons.play_circle_filled, // Replace with your desired audio icon
              color: Colors.black,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}

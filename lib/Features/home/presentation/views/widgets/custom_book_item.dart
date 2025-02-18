//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child:
          //     child: CachedNetworkImage(
          //       //fit: BoxFit.cover,
          //       imageUrl: imageUrl,
          //       // progressIndicatorBuilder: (context, url, downloadProgress) =>
          //       //     CircularProgressIndicator(value: downloadProgress.progress),
          //       errorWidget: (context, url, error) => Icon(Icons.error),
          //     ),
          Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
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

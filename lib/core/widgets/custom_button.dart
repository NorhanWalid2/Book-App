import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.bottomLeft,
      required this.buttomRight,
      required this.topLeft,
      required this.topRight,
      required this.backgroundColor,
      this.colorTextButton,
      required this.textButton,
        this.onpressed
      });
  double topLeft;
  double topRight;
  double bottomLeft;
  double buttomRight;
  Color backgroundColor;
  Color? colorTextButton = Colors.black;
  String textButton;
  void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeft),
              bottomLeft: Radius.circular(bottomLeft),
              topRight: Radius.circular(topRight),
              bottomRight: Radius.circular(buttomRight),
            ),
          ),
        ),
        
        child: Text(
          textButton,
          style: Styles.textstyle18
              .copyWith(fontWeight: FontWeight.bold, color: colorTextButton),
        ),
      ),
    );
  }
}

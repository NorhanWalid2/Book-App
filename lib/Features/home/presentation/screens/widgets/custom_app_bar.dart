import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                Image.asset(
                  'assets/images/Capture.PNG',
                  height: 40,
                ),
              const  Spacer(),
                IconButton(
                  onPressed: () {},
                  icon:const Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 30,
                  ),
                )
              ],
            );
  }
}
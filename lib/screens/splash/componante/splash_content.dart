import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      // color: Colors.black,     to check the page   container
      children: [
        Spacer(),
        Image.asset(
          image,
          height: 450,
          width: 350,
        ),
      ],
    );
  }
}
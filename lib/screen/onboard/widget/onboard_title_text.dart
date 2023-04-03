import 'package:flutter/material.dart';

class OnboardTitleText extends StatelessWidget {
  final String title;

  const OnboardTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
    );
  }
}

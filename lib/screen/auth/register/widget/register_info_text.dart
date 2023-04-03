import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class RegisterInfoText extends StatelessWidget {
  const RegisterInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Water is life. Water is a basic human need. In various lines of life, humans need water.',
      style: TextStyle(
        color: CustomColor.greyTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}

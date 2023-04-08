import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class FAQInfoText extends StatelessWidget {
  final String answer;

  const FAQInfoText({Key? key, required this.answer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      answer,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: CustomColor.hintColor,
      ),
    );
  }
}

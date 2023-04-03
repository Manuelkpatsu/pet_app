import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class OnboardDescriptionText extends StatelessWidget {
  final String description;

  const OnboardDescriptionText({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        color: CustomColor.greyTextColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}

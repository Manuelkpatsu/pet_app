import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class DescriptionText extends StatelessWidget {
  final String description;

  const DescriptionText({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.60,
        color: CustomColor.hintColor,
      ),
    );
  }
}

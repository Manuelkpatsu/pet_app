import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class ProductDescriptionText extends StatelessWidget {
  final String description;

  const ProductDescriptionText({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: const TextStyle(
        color: CustomColor.hintColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.6,
      ),
    );
  }
}

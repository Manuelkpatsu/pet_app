import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class ProductName extends StatelessWidget {
  final String name;

  const ProductName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.60,
        color: CustomColor.blackColor,
      ),
    );
  }
}

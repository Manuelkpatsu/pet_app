import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class ExpiryDate extends StatelessWidget {
  const ExpiryDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'for 2-3 years',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.60,
        color: CustomColor.hintColor,
      ),
    );
  }
}

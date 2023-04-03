import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: CustomColor.dividerColor,
      height: 0,
      thickness: 1.0,
    );
  }
}

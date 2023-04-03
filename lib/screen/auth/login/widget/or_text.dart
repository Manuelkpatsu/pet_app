import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class OrText extends StatelessWidget {
  const OrText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Or',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.4,
        color: CustomColor.orColor.withOpacity(0.8),
      ),
    );
  }
}

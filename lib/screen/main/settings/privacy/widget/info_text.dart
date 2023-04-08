import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class InfoText extends StatelessWidget {
  final String info;

  const InfoText({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        info,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 1.50,
          color: CustomColor.hintColor,
        ),
      ),
    );
  }
}

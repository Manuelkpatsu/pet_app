import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class InfoTitleText extends StatelessWidget {
  final String title;

  const InfoTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.60,
        color: CustomColor.darkGreyColor,
      ),
    );
  }
}

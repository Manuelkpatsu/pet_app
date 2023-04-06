import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class InfoTotalText extends StatelessWidget {
  final int total;

  const InfoTotalText({Key? key, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      total.toString(),
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.60,
        color: CustomColor.darkColor,
      ),
    );
  }
}

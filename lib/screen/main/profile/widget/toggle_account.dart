import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class ToggleAccount extends StatelessWidget {
  final Widget widget;

  const ToggleAccount({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 45,
        width: 240,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: CustomColor.productBackgroundColor,
        ),
        child: widget,
      ),
    );
  }
}

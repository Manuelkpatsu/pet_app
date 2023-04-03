import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'circular_button_loader.dart';

class CustomOutlineButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Widget widget;
  final double borderRadius;
  final bool isLoading;
  final FontWeight fontWeight;
  final double fontSize;
  final Color foregroundColor;
  final Color borderColor;
  final double lineHeight;

  const CustomOutlineButton({
    Key? key,
    required this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    required this.widget,
    this.borderRadius = 30,
    this.isLoading = false,
    this.fontWeight = FontWeight.w700,
    this.fontSize = 16,
    this.foregroundColor = CustomColor.primaryColor,
    this.borderColor = CustomColor.primaryColor,
    this.lineHeight = 1.8,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: lineHeight,
        ),
        elevation: 0,
        foregroundColor: foregroundColor,
        side: BorderSide(color: borderColor, width: 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        minimumSize: Size(width!, height!),
      ),
      child: isLoading ? const CircularButtonLoader() : widget,
    );
  }
}

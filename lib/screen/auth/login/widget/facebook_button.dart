import 'package:flutter/material.dart';
import 'package:pet_app/screen/widget/custom_outline_button.dart';
import 'package:pet_app/theme/custom_color.dart';

class FacebookButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const FacebookButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomOutlineButton(
        onPressed: onPressed,
        foregroundColor: CustomColor.blueColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        borderRadius: 16,
        borderColor: CustomColor.textFieldBorderColor,
        lineHeight: 1,
        widget: const Text('facebook'),
      ),
    );
  }
}

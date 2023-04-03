import 'package:flutter/material.dart';
import 'package:pet_app/screen/widget/custom_outline_button.dart';
import 'package:pet_app/theme/custom_color.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const GoogleButton({Key? key, required this.onPressed}) : super(key: key);

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
        widget: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              fit: BoxFit.contain,
              height: 25,
              width: 25,
            ),
            const SizedBox(width: 8),
            const Text('Google'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class CreateAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const CreateAccount({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Don’t have an account? ',
          style: const TextStyle(
            color: CustomColor.blackColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            height: 1.6,
          ),
          children: [
            TextSpan(
              text: 'Create Account',
              recognizer: TapGestureRecognizer()..onTap = onTap,
              style: const TextStyle(
                color: CustomColor.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

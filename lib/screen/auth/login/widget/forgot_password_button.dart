import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgotPasswordButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        splashColor: CustomColor.primaryColor.withOpacity(0.1),
        highlightColor: CustomColor.primaryColor.withOpacity(0.1),
        onTap: onTap,
        child: const Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 14,
            height: 1.5,
            fontWeight: FontWeight.w500,
            color: CustomColor.primaryColor,
          ),
        ),
      ),
    );
  }
}

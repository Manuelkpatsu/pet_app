import 'package:flutter/material.dart';

class VerifyOTPText extends StatelessWidget {
  const VerifyOTPText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Verify,\nYour OTP',
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1.4,
      ),
    );
  }
}

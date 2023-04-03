import 'package:flutter/material.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Forgot\nPassword',
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1.4,
      ),
    );
  }
}

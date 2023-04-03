import 'package:flutter/material.dart';

class ResetPasswordText extends StatelessWidget {
  const ResetPasswordText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Reset\nYour Password',
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1.4,
      ),
    );
  }
}

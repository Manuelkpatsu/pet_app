import 'package:flutter/material.dart';

class PaymentSuccessText extends StatelessWidget {
  const PaymentSuccessText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Payment\nSuccess!',
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1.40,
        color: Colors.black,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TotalText extends StatelessWidget {
  const TotalText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Total',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.10,
        color: Colors.black,
      ),
    );
  }
}

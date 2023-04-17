import 'package:flutter/material.dart';

class QuantityText extends StatelessWidget {
  final int quantity;

  const QuantityText({Key? key, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      quantity.toString(),
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.4,
      ),
    );
  }
}

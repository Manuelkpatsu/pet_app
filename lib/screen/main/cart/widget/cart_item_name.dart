import 'package:flutter/material.dart';

class CartItemName extends StatelessWidget {
  final String name;

  const CartItemName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.50,
        color: Colors.black,
      ),
    );
  }
}

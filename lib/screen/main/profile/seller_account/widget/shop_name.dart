import 'package:flutter/material.dart';

class ShopNameText extends StatelessWidget {
  final String name;

  const ShopNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontSize: 20,
        height: 1.50,
      ),
    );
  }
}

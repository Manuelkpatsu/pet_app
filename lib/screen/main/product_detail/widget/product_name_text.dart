import 'package:flutter/material.dart';

class ProductNameText extends StatelessWidget {
  final String name;

  const ProductNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.1,
      ),
    );
  }
}

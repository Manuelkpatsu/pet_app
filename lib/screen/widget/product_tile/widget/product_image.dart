import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: 142,
      width: double.infinity,
      fit: BoxFit.contain,
    );
  }
}

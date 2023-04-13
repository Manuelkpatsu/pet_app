import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class CartItemImage extends StatelessWidget {
  final String image;

  const CartItemImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 14),
      decoration: BoxDecoration(
          color: CustomColor.productBackgroundColor,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.contain,
          )
      ),
    );
  }
}

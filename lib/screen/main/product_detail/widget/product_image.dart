import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class ProductImage extends StatelessWidget {
  final String image;

  const ProductImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 311,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: CustomColor.productBackgroundColor,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.asset(
            image,
            width: 216,
            height: 305,
            fit: BoxFit.contain,
          ),
          Positioned(
            right: 27,
            bottom: 0,
            child: Image.asset(
              image,
              width: 174,
              height: 245,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

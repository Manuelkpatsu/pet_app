import 'package:flutter/material.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'widget/product_image.dart';
import 'widget/product_name.dart';
import 'widget/product_price.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;

  const ProductTile({Key? key, required this.product, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(24),
        child: Ink(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: CustomColor.productBackgroundColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImage(image: product.image),
              ProductName(name: product.name),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductPrice(price: product.price),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

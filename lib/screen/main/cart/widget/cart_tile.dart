import 'package:flutter/material.dart';
import 'package:pet_app/models/product.dart';

import 'cart_item_image.dart';
import 'cart_item_name.dart';
import 'cart_item_price.dart';
import 'expiry_date.dart';

class CartTile extends StatelessWidget {
  final Product product;

  const CartTile({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            offset: const Offset(4, 4),
            blurRadius: 20,
          ),
        ],
      ),
      child: Row(
        children: [
          CartItemImage(image: product.image),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CartItemName(name: product.name),
                const ExpiryDate(),
                const SizedBox(height: 10),
                CartItemPrice(price: product.price),
              ],
            ),
          )
        ],
      ),
    );
  }
}

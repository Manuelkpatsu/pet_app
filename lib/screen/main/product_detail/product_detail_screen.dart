import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_button.dart';

import 'widget/product_description_text.dart';
import 'widget/product_image.dart';
import 'widget/product_name_text.dart';
import 'widget/product_price.dart';
import 'widget/quantity.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/detail';

  final Product product;

  const ProductDetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Product Detail'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(IconlyLight.heart, size: 24, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 10),
                  ProductImage(image: product.image),
                  const SizedBox(height: 30),
                  ProductNameText(name: product.name),
                  const SizedBox(height: 10),
                  ProductDescriptionText(description: product.description),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Quantity(
                        onDecreasePressed: () {},
                        onAddPressed: () {},
                        quantity: 1,
                      ),
                      ProductPrice(price: product.price),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
            CustomButton(
              onPressed: () {},
              widget: const Text('Add to Cart'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

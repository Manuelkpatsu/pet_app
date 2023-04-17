import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/main/product_detail/product_detail_screen.dart';
import 'package:pet_app/screen/widget/product_tile/product_tile.dart';

class Products extends StatelessWidget {
  final List<Product> products;

  const Products({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemCount: products.length,
        itemBuilder: (context, int index) {
          Product product = products[index];

          return ProductTile(
            product: product,
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: ProductDetailScreen(product: product),
                withNavBar: false,
              );
            },
            onAddToCartTap: () {},
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 220,
        ),
      ),
    );
  }
}

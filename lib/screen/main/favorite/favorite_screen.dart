import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/main/product_detail/product_detail_screen.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/product_tile/product_tile.dart';

class FavoriteScreen extends StatelessWidget {
  static const routeName = '/favorite';

  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> favorites = [
      const Product(
        id: 1,
        image: 'assets/images/products/product-1.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
      const Product(
        id: 2,
        image: 'assets/images/products/product-2.png',
        name: 'RC Persian',
        price: 22.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
      const Product(
        id: 3,
        image: 'assets/images/products/product-1.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
      const Product(
        id: 4,
        image: 'assets/images/products/product-2.png',
        name: 'RC Persian',
        price: 22.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Favorite'),
        actions: [
          IconButton(
            onPressed: () {},
            splashRadius: 20,
            icon: const Icon(IconlyLight.delete),
          ),
        ],
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        itemCount: favorites.length,
        itemBuilder: (context, int index) {
          Product product = favorites[index];

          return ProductTile(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: ProductDetailScreen(product: product),
                withNavBar: false,
              );
            },
            product: product,
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

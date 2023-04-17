import 'package:flutter/material.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/main/product_detail/product_detail_screen.dart';

import 'widget/recent_search_tile.dart';

class RecentSearch extends StatefulWidget {
  const RecentSearch({Key? key}) : super(key: key);

  @override
  State<RecentSearch> createState() => _RecentSearchState();
}

class _RecentSearchState extends State<RecentSearch> {
  final List<Product> _recentSearchProducts = [
    const Product(
      id: 1,
      image: 'assets/images/products/product-1.png',
      name: 'Royal Canin Persian',
      price: 20.99,
      description:
          "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
    ),
    const Product(
      id: 2,
      image: 'assets/images/products/product-2.png',
      name: 'Royal Canin Persian',
      price: 22.99,
      description:
          "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
    ),
    const Product(
      id: 3,
      image: 'assets/images/products/product-1.png',
      name: 'Royal Canin Kitten',
      price: 20.99,
      description:
          "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
    ),
    const Product(
      id: 4,
      image: 'assets/images/products/product-2.png',
      name: 'Royal Canin Persian',
      price: 22.99,
      description:
          "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _recentSearchProducts.length,
        itemBuilder: (ctx, index) {
          Product product = _recentSearchProducts[index];

          return RecentSearchTile(
            onTap: () {
              Navigator.of(context).pushNamed(
                ProductDetailScreen.routeName,
                arguments: product,
              );
            },
            onDeleteTap: () {
              setState(() {
                _recentSearchProducts.removeAt(index);
              });
            },
            product: product,
          );
        },
      ),
    );
  }
}

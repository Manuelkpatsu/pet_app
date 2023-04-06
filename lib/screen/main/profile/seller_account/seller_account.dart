import 'package:flutter/material.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/main/profile/widget/account_card.dart';
import 'package:pet_app/screen/main/profile/widget/account_image.dart';
import 'package:pet_app/screen/main/profile/widget/account_type.dart';

import 'products.dart';
import 'sold.dart';
import 'stats.dart';
import 'widget/info_tile.dart';
import 'widget/products_filter.dart';
import 'widget/products_filter_button.dart';
import 'widget/shop_name.dart';

class SellerAccount extends StatefulWidget {
  const SellerAccount({Key? key}) : super(key: key);

  @override
  State<SellerAccount> createState() => _SellerAccountState();
}

class _SellerAccountState extends State<SellerAccount> {
  ProductsFilter _selectedFilterType = ProductsFilter.product;
  final List<Product> _products = [
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
  ];
  final List<Product> _savedProducts = [
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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: const [
              AccountCard(type: AccountType.seller),
              AccountImage(
                type: AccountType.seller,
                image: null,
                onPressed: null,
                shopName: 'Pittashop',
              ),
            ],
          ),
          const SizedBox(height: 70),
          const ShopNameText(name: 'Pittashop'),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              InfoTile(title: 'Followers', total: 109),
              SizedBox(width: 40),
              InfoTile(title: 'Following', total: 992),
              SizedBox(width: 40),
              InfoTile(title: 'Sales', total: 80),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: ProductsFilter.values.map((type) {
              return ProductsFilterButton(
                type: type,
                isSelected: _selectedFilterType == type,
                onPressed: () {
                  setState(() {
                    if (_selectedFilterType != type) {
                      _selectedFilterType = type;
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          _selectedFilterType == ProductsFilter.product
              ? Products(products: _products)
              : _selectedFilterType == ProductsFilter.sold
                  ? SoldProducts(products: _savedProducts)
                  : const Stats(),
        ],
      ),
    );
  }
}

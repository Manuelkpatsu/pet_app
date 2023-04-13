import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconly/iconly.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/main/payment/payment_screen.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'widget/amount_text.dart';
import 'widget/cart_tile.dart';
import 'widget/description_text.dart';
import 'widget/total_amount_text.dart';
import 'widget/total_text.dart';

class CartScreen extends StatefulWidget {
  static const routeName = '/cart';

  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final List<Product> _items = [
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
  final double _taxAmount = 1.99;

  @override
  Widget build(BuildContext context) {
    final totalAmount = _items.fold(0.0, (previous, current) => previous + current.price);

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Cart'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        itemCount: _items.length,
        itemBuilder: (ctx, index) {
          Product product = _items[index];

          return Padding(
            padding: EdgeInsets.only(bottom: index == _items.length - 1 ? 0 : 20),
            child: Slidable(
              key: UniqueKey(),
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                dismissible: DismissiblePane(
                  onDismissed: () {
                    setState(() {
                      _items.removeAt(index);
                    });
                  },
                ),
                extentRatio: 0.25,
                children: [
                  SlidableAction(
                    onPressed: (ctx) {
                      setState(() {
                        _items.removeAt(index);
                      });
                    },
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.zero,
                      bottomLeft: Radius.zero,
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                    backgroundColor: CustomColor.alertColor,
                    foregroundColor: Colors.white,
                    icon: IconlyLight.delete,
                  ),
                ],
              ),
              child: CartTile(product: product),
            ),
          );
        },
      ),
      bottomSheet: IntrinsicHeight(
        child: Container(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 20, bottom: 60),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                offset: const Offset(4, -4),
                blurRadius: 20,
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DescriptionText(description: '${_items.length} Items'),
                  AmountText(amount: totalAmount),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const DescriptionText(description: 'Tax'),
                  AmountText(amount: _taxAmount),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TotalText(),
                  TotalAmountText(amount: totalAmount + _taxAmount),
                ],
              ),
              const SizedBox(height: 25),
              CustomButton(
                onPressed: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: PaymentScreen(amount: totalAmount + _taxAmount),
                    withNavBar: false,
                  );
                },
                widget: const Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

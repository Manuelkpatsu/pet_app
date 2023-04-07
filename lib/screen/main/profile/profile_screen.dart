import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/main/settings/settings_screen.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'profile_account/profile_account.dart';
import 'seller_account/seller_account.dart';
import 'widget/account_type.dart';
import 'widget/account_type_button.dart';
import 'widget/toggle_account.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  AccountType _selectedAccountType = AccountType.profile;
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
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const SettingsScreen(),
                withNavBar: false,
              );
            },
            splashRadius: 20,
            icon: const Icon(IconlyBold.setting, color: CustomColor.primaryColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            ToggleAccount(
              widget: Row(
                children: AccountType.values.map((type) {
                  return RequestTypeButton(
                    type: type,
                    isSelected: _selectedAccountType == type,
                    onPressed: () {
                      setState(() {
                        if (_selectedAccountType != type) {
                          _selectedAccountType = type;
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 24),
            _selectedAccountType == AccountType.profile
                ? ProfileAccount(savedProducts: _savedProducts)
                : const SellerAccount(),
          ],
        ),
      ),
    );
  }
}

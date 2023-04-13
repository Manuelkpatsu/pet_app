import 'package:flutter/material.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/main/profile/widget/account_type.dart';
import 'package:pet_app/screen/widget/product_tile/product_tile.dart';

import '../widget/account_card.dart';
import '../widget/account_image.dart';
import 'widget/saved_text.dart';
import 'widget/user_name.dart';

class ProfileAccount extends StatelessWidget {
  final List<Product> savedProducts;

  const ProfileAccount({Key? key, required this.savedProducts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: const [
              AccountCard(type: AccountType.profile),
              AccountImage(
                type: AccountType.profile,
                image: 'assets/images/user.png',
                onPressed: null,
                shopName: null,
              ),
            ],
          ),
          const SizedBox(height: 70),
          const UserNameText(name: 'Manuel'),
          const SizedBox(height: 24),
          const SavedText(),
          const SizedBox(height: 12),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemCount: savedProducts.length,
              itemBuilder: (context, int index) {
                Product savedProduct = savedProducts[index];

                return ProductTile(
                  product: savedProduct,
                  onTap: () {},
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
          ),
        ],
      ),
    );
  }
}

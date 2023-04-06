import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'account_type.dart';

class AccountCard extends StatelessWidget {
  final AccountType type;

  const AccountCard({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: 160,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: const AssetImage('assets/images/profile.png'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            type == AccountType.seller
                ? CustomColor.primaryColor
                : CustomColor.productBackgroundColor,
            BlendMode.darken,
          ),
        ),
      ),
    );
  }
}

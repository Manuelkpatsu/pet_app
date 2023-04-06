import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'account_type.dart';

class RequestTypeButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final AccountType type;
  final bool isSelected;

  const RequestTypeButton({
    Key? key,
    required this.onPressed,
    required this.type,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String accountTypeText() {
      switch (type) {
        case AccountType.profile:
          return "Profile";
        case AccountType.seller:
          return "Seller Mode";
      }
    }

    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(5),
          backgroundColor: isSelected ? CustomColor.primaryColor : Colors.transparent,
          foregroundColor: isSelected ? Colors.white : CustomColor.hintColor,
          shape: isSelected
              ? RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                )
              : null,
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
        child: Text(accountTypeText()),
      ),
    );
  }
}

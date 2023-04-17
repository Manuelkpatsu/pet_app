import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'increase_decrease_button.dart';
import 'quantity_text.dart';

class Quantity extends StatelessWidget {
  final int quantity;
  final VoidCallback? onDecreasePressed;
  final VoidCallback? onAddPressed;

  const Quantity({
    Key? key,
    required this.quantity,
    required this.onDecreasePressed,
    required this.onAddPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: CustomColor.productBackgroundColor,
      ),
      child: Row(
        children: [
          IncreaseDecreaseButton(
            onPressed: onDecreasePressed,
            icon: Icons.remove,
          ),
          const SizedBox(width: 15),
          QuantityText(quantity: quantity),
          const SizedBox(width: 15),
          IncreaseDecreaseButton(
            onPressed: onAddPressed,
            icon: Icons.add,
          ),
        ],
      ),
    );
  }
}

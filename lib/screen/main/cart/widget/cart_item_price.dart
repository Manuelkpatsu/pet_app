import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_app/theme/custom_color.dart';

class CartItemPrice extends StatelessWidget {
  final double price;

  const CartItemPrice({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount =
        price != 0 ? NumberFormat("###,###.00").format(price) : price.toStringAsFixed(2);

    return Text(
      '₵$formattedAmount',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.50,
        color: CustomColor.primaryColor,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductPrice extends StatelessWidget {
  final double price;

  const ProductPrice({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount =
        price != 0 ? NumberFormat("###,###.00").format(price) : price.toStringAsFixed(2);

    return Text(
      '₵$formattedAmount',
      style: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
    );
  }
}

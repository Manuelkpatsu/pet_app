import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TotalAmountText extends StatelessWidget {
  final double amount;

  const TotalAmountText({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount =
        amount != 0 ? NumberFormat("###,###.00").format(amount) : amount.toStringAsFixed(2);

    return Text(
      '₵$formattedAmount',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.50,
        color: Colors.black,
      ),
    );
  }
}

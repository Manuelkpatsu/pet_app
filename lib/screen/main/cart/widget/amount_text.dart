import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_app/theme/custom_color.dart';

class AmountText extends StatelessWidget {
  final double amount;

  const AmountText({Key? key, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount =
        amount != 0 ? NumberFormat("###,###.00").format(amount) : amount.toStringAsFixed(2);

    return Text(
      '₵$formattedAmount',
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.60,
        color: CustomColor.hintColor,
      ),
    );
  }
}

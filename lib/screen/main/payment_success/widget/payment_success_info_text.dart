import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class PaymentSuccessInfoText extends StatelessWidget {
  const PaymentSuccessInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Your order is being prepared by the shop. The courier will send it to your address',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.50,
        color: CustomColor.greyTextColor,
      ),
    );
  }
}

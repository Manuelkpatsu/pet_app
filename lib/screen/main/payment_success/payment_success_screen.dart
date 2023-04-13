import 'package:flutter/material.dart';
import 'package:pet_app/screen/main/app.dart';
import 'package:pet_app/screen/widget/custom_button.dart';

import 'widget/payment_success_info_text.dart';
import 'widget/payment_success_text.dart';

class PaymentSuccessScreen extends StatelessWidget {
  static const routeName = '/payment_success';

  const PaymentSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const PaymentSuccessText(),
              const SizedBox(height: 30),
              const PaymentSuccessInfoText(),
              const Spacer(),
              CustomButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    MainApp.routeName,
                    (route) => false,
                  );
                },
                widget: const Text('Go Home'),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

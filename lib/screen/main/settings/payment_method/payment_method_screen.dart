import 'package:flutter/material.dart';
import 'package:pet_app/models/payment_method.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_button.dart';

import 'widget/payment_method_tile.dart';

class PaymentMethodScreen extends StatefulWidget {
  static const routeName = '/payment_method';

  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  final List<PaymentMethod> _paymentMethods = [
    const PaymentMethod(
      id: 1,
      accountNumber: '1233 4128 1293 1231',
      accountHolderName: 'Manuel',
      expiredDate: '26/12',
      cvv: '334',
      provider: 'Paypal',
    ),
    const PaymentMethod(
      id: 2,
      accountNumber: '1233 2528 1343 1231',
      accountHolderName: 'Joey Okyere',
      expiredDate: '26/12',
      cvv: '124',
      provider: 'Bank Transfer',
    ),
  ];
  int _selectedPaymentMethod = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Payment Method'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemCount: _paymentMethods.length,
                itemBuilder: (ctx, index) {
                  final paymentMethod = _paymentMethods[index];

                  return PaymentMethodTile(
                    value: paymentMethod.id,
                    groupValue: _selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        _selectedPaymentMethod = value as int;
                      });
                    },
                    selected: _selectedPaymentMethod == paymentMethod.id,
                    paymentMethod: paymentMethod,
                  );
                },
              ),
            ),
            CustomButton(
              onPressed: () {},
              widget: const Text('Add New Payment Method'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

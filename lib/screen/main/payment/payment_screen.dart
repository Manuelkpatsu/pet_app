import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pet_app/models/payment_method.dart';
import 'package:pet_app/screen/main/payment_success/payment_success_screen.dart';
import 'package:pet_app/screen/main/settings/payment_method/widget/payment_method_tile.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_button.dart';

class PaymentScreen extends StatefulWidget {
  static const routeName = '/payment';

  final double amount;

  const PaymentScreen({Key? key, required this.amount}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
    final formattedAmount = widget.amount != 0
        ? NumberFormat("###,###.00").format(widget.amount)
        : widget.amount.toStringAsFixed(2);

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Make Payment'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const SectionText(section: 'Choose your Payment Method', padding: EdgeInsets.zero),
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
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil(
                  PaymentSuccessScreen.routeName,
                  (route) => false,
                );
              },
              widget: Text('Pay ₵$formattedAmount Now'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

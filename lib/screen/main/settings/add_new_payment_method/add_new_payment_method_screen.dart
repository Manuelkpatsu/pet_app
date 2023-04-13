import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/utils/card_month_input_formatter.dart';
import 'package:pet_app/utils/card_number_input_formatter.dart';
import 'package:pet_app/utils/validator.dart';

class AddNewPaymentMethodScreen extends StatefulWidget {
  static const routeName = '/add_payment_method';

  const AddNewPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<AddNewPaymentMethodScreen> createState() => _AddNewPaymentMethodScreenState();
}

class _AddNewPaymentMethodScreenState extends State<AddNewPaymentMethodScreen> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvCodeController = TextEditingController();
  final TextEditingController _cardHolderNameController = TextEditingController();
  final GlobalKey<FormState> _addPaymentMethodFormKey = GlobalKey<FormState>();
  bool _isEnabled = false;

  @override
  void dispose() {
    _cardHolderNameController.dispose();
    _cvvCodeController.dispose();
    _expiryDateController.dispose();
    _cardNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Payment Method'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _addPaymentMethodFormKey,
          onChanged: () {
            setState(() {
              if (_addPaymentMethodFormKey.currentState!.validate()) {
                _isEnabled = true;
              }
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const SectionText(section: 'Add New Payment Method', padding: EdgeInsets.zero),
              const SizedBox(height: 20),
              TextInputField(
                controller: _cardNumberController,
                validator: Validator.cardNumber,
                inputAction: TextInputAction.next,
                inputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(19),
                  CardNumberInputFormatter(),
                ],
                autofillHints: const [AutofillHints.creditCardNumber],
                hintText: 'Card Number',
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _cardHolderNameController,
                validator: Validator.cardHolderName,
                inputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                autofillHints: const [AutofillHints.creditCardName],
                hintText: 'Card Holder Name',
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _expiryDateController,
                validator: Validator.date,
                inputAction: TextInputAction.next,
                inputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                  CardMonthInputFormatter(),
                ],
                autofillHints: const [AutofillHints.creditCardExpirationDate],
                hintText: 'MM/YY',
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _cvvCodeController,
                validator: Validator.cvv,
                inputAction: TextInputAction.done,
                inputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                ],
                autofillHints: const [AutofillHints.creditCardSecurityCode],
                hintText: 'CVV',
              ),
              const SizedBox(height: 100),
              CustomButton(
                onPressed: _isEnabled
                    ? () async {
                        if (_addPaymentMethodFormKey.currentState!.validate()) {
                          Navigator.of(context).pop();
                        }
                      }
                    : null,
                widget: const Text('Save'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

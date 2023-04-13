import 'package:flutter/material.dart';
import 'package:pet_app/models/payment_method.dart';
import 'package:pet_app/theme/custom_color.dart';

class PaymentMethodTile extends StatelessWidget {
  final Object value;
  final Object? groupValue;
  final void Function(Object?)? onChanged;
  final PaymentMethod paymentMethod;
  final bool selected;

  const PaymentMethodTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.paymentMethod,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: CustomColor.radioButtonColor,
        ),
        child: RadioListTile(
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(
              color: selected ? CustomColor.primaryColor : CustomColor.textFieldBorderColor,
              width: 1,
            ),
          ),
          controlAffinity: ListTileControlAffinity.trailing,
          contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          selected: selected,
          title: Text(
            paymentMethod.provider,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1.5,
              color: CustomColor.hintColor,
            ),
          ),
          activeColor: CustomColor.primaryColor,
          dense: true,
          visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity),
        ),
      ),
    );
  }
}

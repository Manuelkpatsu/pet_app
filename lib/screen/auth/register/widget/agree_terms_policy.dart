import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class AgreeTermsPolicy extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?)? onChanged;
  final VoidCallback? onTermsTap;
  final VoidCallback? onPolicyTap;

  const AgreeTermsPolicy({
    Key? key,
    required this.isChecked,
    required this.onChanged,
    required this.onTermsTap,
    required this.onPolicyTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          activeColor: CustomColor.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          side: const BorderSide(color: CustomColor.textFieldBorderColor, width: 1.0),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        const SizedBox(width: 3),
        RichText(
          text: TextSpan(
            text: 'I agree to the ',
            style: const TextStyle(
              color: CustomColor.hintColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
              height: 1.6,
            ),
            children: [
              TextSpan(
                text: 'Terms of Service',
                recognizer: TapGestureRecognizer()..onTap = onTermsTap,
                style: const TextStyle(color: CustomColor.primaryColor),
              ),
              const TextSpan(text: ' and '),
              TextSpan(
                text: 'Privacy Policy',
                recognizer: TapGestureRecognizer()..onTap = onPolicyTap,
                style: const TextStyle(color: CustomColor.primaryColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

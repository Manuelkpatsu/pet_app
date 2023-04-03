import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_app/screen/auth/login/login_screen.dart';
import 'package:pet_app/screen/auth/register/widget/already_have_account.dart';
import 'package:pet_app/screen/auth/reset_password/reset_password_screen.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/theme/custom_color.dart';
import 'package:pet_app/utils/validator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'widget/verify_otp_info_text.dart';
import 'widget/verify_otp_text.dart';

class OTPVerificationScreen extends StatefulWidget {
  static const routeName = '/otp_verification';

  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final GlobalKey<FormState> _otpFormKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();
  bool _isEnabled = false;

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _otpFormKey,
          onChanged: () {
            setState(() {
              if (_otpFormKey.currentState!.validate()) {
                _isEnabled = true;
              }
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const VerifyOTPText(),
              const SizedBox(height: 32),
              const VerifyOTPInfoText(),
              const SizedBox(height: 32),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                controller: _otpController,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                validator: Validator.code,
                appContext: context,
                length: 4,
                cursorColor: CustomColor.primaryColor,
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.primaryColor,
                  height: 1.5,
                ),
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(16),
                  borderWidth: 1,
                  fieldHeight: 60,
                  fieldWidth: 60,
                  activeColor: CustomColor.primaryColor,
                  selectedColor: CustomColor.primaryColor,
                  inactiveColor: CustomColor.textFieldBorderColor,
                  errorBorderColor: CustomColor.alertColor,
                ),
                animationType: AnimationType.fade,
                errorTextSpace: 25,
                onChanged: (code) {},
                inputFormatters: [LengthLimitingTextInputFormatter(4)],
              ),
              const SizedBox(height: 100),
              AlreadyHaveAccount(
                onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: _isEnabled ? () {
                  if (_otpFormKey.currentState!.validate()) {
                    Navigator.of(context).pushNamed(ResetPasswordScreen.routeName);
                  }
                } : null,
                widget: const Text('Verify'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

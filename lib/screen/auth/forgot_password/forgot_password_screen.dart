import 'package:flutter/material.dart';
import 'package:pet_app/screen/auth/login/login_screen.dart';
import 'package:pet_app/screen/auth/otp_verification/otp_verification_screen.dart';
import 'package:pet_app/screen/auth/register/widget/already_have_account.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/utils/validator.dart';

import 'widget/forgot_password_info_text.dart';
import 'widget/forgot_password_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = '/forgot_password';

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _forgotPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  bool _isEnabled = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Form(
            key: _forgotPasswordFormKey,
            onChanged: () {
              setState(() {
                if (_forgotPasswordFormKey.currentState!.validate()) {
                  _isEnabled = true;
                }
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const ForgotPasswordText(),
                const SizedBox(height: 32),
                const ForgotPasswordInfoText(),
                const SizedBox(height: 32),
                TextInputField(
                  controller: _emailController,
                  hintText: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.done,
                  validator: Validator.email,
                ),
                const SizedBox(height: 100),
                AlreadyHaveAccount(
                  onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: _isEnabled
                      ? () {
                          if (_forgotPasswordFormKey.currentState!.validate()) {
                            Navigator.of(context).pushNamed(OTPVerificationScreen.routeName);
                          }
                        }
                      : null,
                  widget: const Text('Next'),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

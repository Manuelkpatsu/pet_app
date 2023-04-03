import 'package:flutter/material.dart';
import 'package:pet_app/screen/auth/login/login_screen.dart';
import 'package:pet_app/screen/auth/register/widget/already_have_account.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/password_input_field.dart';
import 'package:pet_app/utils/validator.dart';

import 'widget/reset_password_info_text.dart';
import 'widget/reset_password_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const routeName = '/reset_password';

  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final GlobalKey<FormState> _resetPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _isEnabled = false;

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
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
          key: _resetPasswordFormKey,
          onChanged: () {
            setState(() {
              if (_resetPasswordFormKey.currentState!.validate()) {
                _isEnabled = true;
              }
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ResetPasswordText(),
              const SizedBox(height: 32),
              const ResetPasswordInfoText(),
              const SizedBox(height: 32),
              PasswordInputField(
                controller: _newPasswordController,
                hintText: 'New Password',
                inputAction: TextInputAction.next,
                validator: Validator.newPassword,
              ),
              const SizedBox(height: 16),
              PasswordInputField(
                controller: _confirmPasswordController,
                hintText: 'Confirm Password',
                inputAction: TextInputAction.done,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Confirm password is required';
                  }

                  if (_newPasswordController.text.trim() !=
                      _confirmPasswordController.text.trim()) {
                    return "Passwords do not match";
                  }

                  return null;
                },
              ),
              const SizedBox(height: 100),
              AlreadyHaveAccount(
                onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
              ),
              const SizedBox(height: 30),
              CustomButton(
                onPressed: _isEnabled
                    ? () {
                        if (_resetPasswordFormKey.currentState!.validate()) {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            LoginScreen.routeName,
                            (route) => false,
                          );
                        }
                      }
                    : null,
                widget: const Text('Reset Password'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

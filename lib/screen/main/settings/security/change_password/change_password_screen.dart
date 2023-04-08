import 'package:flutter/material.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/password_input_field.dart';
import 'package:pet_app/utils/validator.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const routeName = '/change_password';

  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final GlobalKey<FormState> _changePasswordFormKey = GlobalKey<FormState>();
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
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Change Password'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _changePasswordFormKey,
          onChanged: () {
            setState(() {
              if (_changePasswordFormKey.currentState!.validate()) {
                _isEnabled = true;
              }
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
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
              CustomButton(
                onPressed: _isEnabled
                    ? () {
                        if (_changePasswordFormKey.currentState!.validate()) {
                          Navigator.of(context).pop();
                        }
                      }
                    : null,
                widget: const Text('Change Password'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

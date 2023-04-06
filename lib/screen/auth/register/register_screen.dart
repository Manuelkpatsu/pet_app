import 'package:flutter/material.dart';
import 'package:pet_app/screen/auth/login/login_screen.dart';
import 'package:pet_app/screen/main/app.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/password_input_field.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/utils/validator.dart';

import 'widget/agree_terms_policy.dart';
import 'widget/already_have_account.dart';
import 'widget/create_new_account_text.dart';
import 'widget/register_info_text.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isChecked = false;
  bool _isEnabled = false;

  @override
  void dispose() {
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
            key: _registerFormKey,
            onChanged: () {
              setState(() {
                if (_registerFormKey.currentState!.validate()) {
                  _isEnabled = true;
                }
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const CreateNewAccountText(),
                const SizedBox(height: 32),
                const RegisterInfoText(),
                const SizedBox(height: 32),
                TextInputField(
                  controller: _fullNameController,
                  hintText: 'Full Name',
                  inputAction: TextInputAction.next,
                  validator: Validator.fullName,
                  textCapitalization: TextCapitalization.words,
                ),
                const SizedBox(height: 16),
                TextInputField(
                  controller: _emailController,
                  hintText: 'Email',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  validator: Validator.email,
                ),
                const SizedBox(height: 16),
                PasswordInputField(
                  controller: _passwordController,
                  hintText: 'Password',
                  inputAction: TextInputAction.done,
                  validator: Validator.password,
                ),
                const SizedBox(height: 24),
                AgreeTermsPolicy(
                  isChecked: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  onTermsTap: () {},
                  onPolicyTap: () {},
                ),
                const SizedBox(height: 100),
                AlreadyHaveAccount(
                  onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: _isEnabled
                      ? () {
                          if (_registerFormKey.currentState!.validate()) {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                              MainApp.routeName,
                              (route) => false,
                            );
                          }
                        }
                      : null,
                  widget: const Text('Create Account'),
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

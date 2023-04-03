import 'package:flutter/material.dart';
import 'package:pet_app/screen/auth/forgot_password/forgot_password_screen.dart';
import 'package:pet_app/screen/auth/register/register_screen.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/custom_divider.dart';
import 'package:pet_app/screen/widget/password_input_field.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/utils/validator.dart';

import 'widget/create_account.dart';
import 'widget/facebook_button.dart';
import 'widget/forgot_password_button.dart';
import 'widget/google_button.dart';
import 'widget/login_info_text.dart';
import 'widget/or_text.dart';
import 'widget/welcome_text.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isEnabled = false;

  @override
  void dispose() {
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
            key: _loginFormKey,
            onChanged: () {
              setState(() {
                if (_loginFormKey.currentState!.validate()) {
                  _isEnabled = true;
                }
              });
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const WelcomeText(),
                const SizedBox(height: 32),
                const LoginInfoText(),
                const SizedBox(height: 32),
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
                const SizedBox(height: 15),
                ForgotPasswordButton(
                  onTap: () => Navigator.of(context).pushNamed(ForgotPasswordScreen.routeName),
                ),
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Expanded(child: CustomDivider()),
                    SizedBox(width: 34),
                    OrText(),
                    SizedBox(width: 34),
                    Expanded(child: CustomDivider()),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    GoogleButton(onPressed: () {}),
                    const SizedBox(width: 13),
                    FacebookButton(onPressed: () {}),
                  ],
                ),
                const SizedBox(height: 100),
                CreateAccount(
                  onTap: () => Navigator.of(context).pushNamed(RegisterScreen.routeName),
                ),
                const SizedBox(height: 30),
                CustomButton(
                  onPressed: _isEnabled ? () {} : null,
                  widget: const Text('Login'),
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

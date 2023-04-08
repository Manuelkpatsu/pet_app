import 'package:flutter/material.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/utils/validator.dart';

class ChangeEmailScreen extends StatefulWidget {
  static const routeName = '/change_email';

  const ChangeEmailScreen({Key? key}) : super(key: key);

  @override
  State<ChangeEmailScreen> createState() => _ChangeEmailScreenState();
}

class _ChangeEmailScreenState extends State<ChangeEmailScreen> {
  final GlobalKey<FormState> _changeEmailFormKey = GlobalKey<FormState>();
  final TextEditingController _newEmailController = TextEditingController();
  bool _isEnabled = false;

  @override
  void dispose() {
    _newEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Change Email'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _changeEmailFormKey,
          onChanged: () {
            setState(() {
              if (_changeEmailFormKey.currentState!.validate()) {
                _isEnabled = true;
              }
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              TextInputField(
                controller: _newEmailController,
                hintText: 'New Email',
                inputAction: TextInputAction.done,
                inputType: TextInputType.emailAddress,
                validator: Validator.email,
              ),
              const SizedBox(height: 100),
              CustomButton(
                onPressed: _isEnabled
                    ? () {
                        if (_changeEmailFormKey.currentState!.validate()) {
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

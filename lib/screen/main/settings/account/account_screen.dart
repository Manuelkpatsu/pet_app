import 'package:flutter/material.dart';
import 'package:pet_app/screen/main/profile/profile_account/widget/user_name.dart';
import 'package:pet_app/screen/main/profile/widget/account_card.dart';
import 'package:pet_app/screen/main/profile/widget/account_image.dart';
import 'package:pet_app/screen/main/profile/widget/account_type.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/utils/validator.dart';

import 'widget/image_picker_button.dart';

class AccountScreen extends StatefulWidget {
  static const routeName = '/account';

  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final GlobalKey<FormState> _accountFormKey = GlobalKey<FormState>();
  bool _isEnabled = false;

  @override
  void initState() {
    _nameController.text = 'Manuel Ahuno';
    _emailController.text = 'emma@gmail.com';
    _usernameController.text = 'name123';
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Account'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _accountFormKey,
          onChanged: () {
            setState(() {
              if (_accountFormKey.currentState!.validate()) {
                _isEnabled = true;
              }
            });
          },
          child: Column(
            children: [
              const SizedBox(height: 20),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const AccountCard(type: AccountType.profile),
                  ImagePickerButton(
                    onPressed: () {},
                    top: 20,
                    right: 20,
                  ),
                  AccountImage(
                    type: AccountType.profile,
                    image: 'assets/images/user.png',
                    onPressed: () {},
                    shopName: null,
                  ),
                  ImagePickerButton(
                    onPressed: () {},
                    bottom: 30,
                    left: (MediaQuery.of(context).size.width / 2),
                  ),
                ],
              ),
              const SizedBox(height: 70),
              const UserNameText(name: 'Manuel'),
              const SizedBox(height: 30),
              TextInputField(
                controller: _nameController,
                validator: Validator.fullName,
                inputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                hintText: 'Name',
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _usernameController,
                validator: Validator.username,
                inputAction: TextInputAction.next,
                hintText: 'Username',
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _emailController,
                validator: Validator.email,
                inputAction: TextInputAction.done,
                inputType: TextInputType.emailAddress,
                hintText: 'Email',
              ),
              const SizedBox(height: 50),
              CustomButton(
                onPressed: _isEnabled
                    ? () async {
                        if (_accountFormKey.currentState!.validate()) {
                          Navigator.of(context).pop();
                        }
                      }
                    : null,
                widget: const Text('Save Changes'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

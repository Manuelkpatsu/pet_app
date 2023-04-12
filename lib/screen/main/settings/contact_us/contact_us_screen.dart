import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/app_snack_bar.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/screen/widget/text_input_field.dart';
import 'package:pet_app/utils/validator.dart';

class ContactUsScreen extends StatefulWidget {
  static const routeName = '/contact_us';

  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  TextEditingController _fileController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final GlobalKey<FormState> _contactFormKey = GlobalKey<FormState>();
  FilePickerResult? result;
  File? _pickedFile;
  bool _isEnabled = false;

  @override
  void dispose() {
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    _fileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Contact Us'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Form(
          key: _contactFormKey,
          onChanged: () {
            setState(() {
              if (_contactFormKey.currentState!.validate()) {
                _isEnabled = true;
              }
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              TextInputField(
                controller: _emailController,
                hintText: 'Email',
                inputAction: TextInputAction.next,
                inputType: TextInputType.emailAddress,
                validator: Validator.email,
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _subjectController,
                hintText: 'Subject',
                inputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _fileController,
                hintText: 'Attach a file',
                inputAction: TextInputAction.next,
                onTap: () async {
                  result = await FilePicker.platform.pickFiles();

                  if (result != null) {
                    setState(() {
                      _pickedFile = File(result!.files.single.path!);
                      _fileController = TextEditingController(
                        text: result!.files.single.name,
                      );
                    });
                  } else {
                    debugPrint('Please try again.');
                  }
                },
                readOnly: true,
                onChanged: (value) {},
                prefixIcon: const Icon(CupertinoIcons.paperclip, size: 24),
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _messageController,
                hintText: 'Message',
                inputAction: TextInputAction.done,
                textCapitalization: TextCapitalization.sentences,
                inputType: TextInputType.multiline,
                maxLines: 6,
                validator: Validator.message,
              ),
              const SizedBox(height: 100),
              CustomButton(
                onPressed: _isEnabled
                    ? () async {
                        if (_contactFormKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            AppSnackBar('Message sent successfully!'),
                          );
                        }
                      }
                    : null,
                widget: const Text('Send'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CreateNewAccountText extends StatelessWidget {
  const CreateNewAccountText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Create New\nAccount',
      style: TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontWeight: FontWeight.w600,
        height: 1.4,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserNameText extends StatelessWidget {
  final String name;

  const UserNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontSize: 20,
        height: 1.50,
      ),
    );
  }
}

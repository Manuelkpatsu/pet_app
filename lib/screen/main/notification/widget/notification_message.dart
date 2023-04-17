import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class NotificationMessage extends StatelessWidget {
  final String message;

  const NotificationMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
        color: CustomColor.hintColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.6,
      ),
    );
  }
}

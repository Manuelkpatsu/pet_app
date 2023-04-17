import 'package:flutter/material.dart';

class NotificationTitle extends StatelessWidget {
  final String title;

  const NotificationTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}

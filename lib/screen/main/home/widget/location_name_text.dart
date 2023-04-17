import 'package:flutter/material.dart';

class LocationNameText extends StatelessWidget {
  final String location;

  const LocationNameText({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      location,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.6,
        color: Colors.black,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  final String section;

  const SectionText({Key? key, required this.section}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        section,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          height: 1.8,
        ),
      ),
    );
  }
}

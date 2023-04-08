import 'package:flutter/material.dart';

class SectionText extends StatelessWidget {
  final String section;
  final EdgeInsetsGeometry padding;

  const SectionText({
    Key? key,
    required this.section,
    this.padding = const EdgeInsets.symmetric(horizontal: 24),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
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

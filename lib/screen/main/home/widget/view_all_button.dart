import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class ViewAllButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ViewAllButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: CustomColor.primaryColor,
        padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 2),
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 1.6,
        ),
      ),
      child: const Text('View All'),
    );
  }
}

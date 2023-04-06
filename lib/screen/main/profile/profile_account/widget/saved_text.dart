import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class SavedText extends StatelessWidget {
  const SavedText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'Saved',
        style: TextStyle(
          color: CustomColor.primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

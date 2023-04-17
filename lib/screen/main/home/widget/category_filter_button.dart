import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'category.dart';

class CategoryFilterButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Category type;
  final bool isSelected;

  const CategoryFilterButton({
    Key? key,
    required this.onPressed,
    required this.type,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String categoryTypeText() {
      switch (type) {
        case Category.food:
          return "Food";
        case Category.toys:
          return "Toys";
        case Category.accessories:
          return "Accessories";
      }
    }

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        backgroundColor:
        isSelected ? CustomColor.primaryColor : CustomColor.productBackgroundColor,
        foregroundColor: isSelected ? Colors.white : CustomColor.hintColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        textStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          height: 1.6,
        ),
      ),
      child: Text(categoryTypeText()),
    );
  }
}

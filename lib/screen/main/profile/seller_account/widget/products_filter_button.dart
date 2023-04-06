import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'products_filter.dart';

class ProductsFilterButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final ProductsFilter type;
  final bool isSelected;

  const ProductsFilterButton({
    Key? key,
    required this.onPressed,
    required this.type,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String filterTypeText() {
      switch (type) {
        case ProductsFilter.product:
          return "Product";
        case ProductsFilter.sold:
          return "Sold";
        case ProductsFilter.stats:
          return "Stats";
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: TextButton(
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
        child: Text(filterTypeText()),
      ),
    );
  }
}

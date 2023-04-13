import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class AddToCartButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AddToCartButton({
    Key? key,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.canvas,
      child: InkWell(
        onTap: onPressed,
        customBorder: const CircleBorder(),
        child: Ink(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(color: CustomColor.primaryColor, shape: BoxShape.circle),
          padding: const EdgeInsets.all(7),
          child: const Icon(Icons.add, size: 16, color: Colors.white),
        ),
      ),
    );
  }
}

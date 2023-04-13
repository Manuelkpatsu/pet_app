import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/theme/custom_color.dart';

class ImagePickerButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? bottom;
  final double? top;
  final double? left;
  final double? right;

  const ImagePickerButton({
    Key? key,
    required this.onPressed,
    this.bottom,
    this.top,
    this.right,
    this.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      top: top,
      left: left,
      child: Material(
        type: MaterialType.canvas,
        child: InkWell(
          onTap: onPressed,
          customBorder: const CircleBorder(),
          child: Ink(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            padding: const EdgeInsets.all(4),
            child: const Icon(IconlyLight.edit, size: 16, color: CustomColor.appBarIconColor),
          ),
        ),
      ),
    );
  }
}

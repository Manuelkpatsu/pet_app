import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/theme/custom_color.dart';

class DeleteButton extends StatelessWidget {
  final VoidCallback? onTap;

  const DeleteButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.canvas,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 20),
          height: MediaQuery.of(context).size.height,
          width: 46,
          decoration: BoxDecoration(
            color: CustomColor.productBackgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Align(
            alignment: Alignment.center,
            child: Icon(
              IconlyLight.delete,
              color: CustomColor.alertColor,
            ),
          ),
        ),
      ),
    );
  }
}

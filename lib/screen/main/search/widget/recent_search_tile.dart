import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/theme/custom_color.dart';

class RecentSearchTile extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;
  final VoidCallback? onDeleteTap;

  const RecentSearchTile({
    Key? key,
    required this.product,
    required this.onTap,
    required this.onDeleteTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Row(
          children: [
            Expanded(
              child: Text(
                product.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.5,
                  color: CustomColor.hintColor,
                ),
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: onDeleteTap,
              splashRadius: 20,
              icon: const Icon(
                IconlyLight.close_square,
                size: 24,
                color: CustomColor.hintColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

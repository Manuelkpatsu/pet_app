import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/theme/custom_color.dart';

class NavTile extends StatelessWidget {
  final VoidCallback? onTap;
  final IconData icon;
  final String title;

  const NavTile({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        color: Colors.white,
        child: Row(
          children: [
            Ink(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CustomColor.greyContainerColor.withOpacity(0.5),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Icon(icon, color: Colors.black, size: 24),
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.50,
                ),
              ),
            ),
            const SizedBox(width: 10),
            const Icon(IconlyLight.arrow_right_2, color: Colors.black, size: 24),
          ],
        ),
      ),
    );
  }
}

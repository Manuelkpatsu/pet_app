import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/models/location.dart';
import 'package:pet_app/theme/custom_color.dart';

class LocationTile extends StatelessWidget {
  final Location location;
  final VoidCallback? onPressed;

  const LocationTile({
    Key? key,
    required this.location,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(IconlyLight.location, size: 24, color: Colors.black),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    location.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    location.description,
                    style: const TextStyle(
                      color: CustomColor.hintColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

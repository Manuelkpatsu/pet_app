import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/theme/custom_color.dart';

class SelectLocationButton extends StatelessWidget {
  final VoidCallback? onTap;

  const SelectLocationButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: const [
            Text(
              'Location',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 1.5,
                color: CustomColor.hintColor,
              ),
            ),
            SizedBox(width: 10),
            Icon(
              IconlyLight.arrow_down_2,
              color: CustomColor.hintColor,
              size: 10,
            ),
          ],
        ),
      ),
    );
  }
}

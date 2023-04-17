import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class Mask extends StatelessWidget {
  const Mask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: CustomColor.primaryColor,
        borderRadius: BorderRadius.circular(24),
        image: const DecorationImage(
          image: AssetImage('assets/images/mask.png'),
          fit: BoxFit.contain,
        ),
      ),
      child: Row(
        children: [
          Expanded(child: Container()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Royal Canin Adult Pomeraniann',
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    overflow: TextOverflow.visible,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Get an interesting promo here, without conditions',
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

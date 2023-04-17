import 'package:flutter/material.dart';

class NotificationImage extends StatelessWidget {
  final String image;
  final Color? backgroundColor;

  const NotificationImage({
    Key? key,
    required this.image,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        image: DecorationImage(
          image: AssetImage(image),
          fit: backgroundColor == null ? BoxFit.cover : BoxFit.contain,
        ),
      ),
    );
  }
}

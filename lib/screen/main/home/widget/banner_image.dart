import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  final String image;
  final double imageHeight;
  final double imageWidth;

  const BannerImage({
    Key? key,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.image,
    required this.imageHeight,
    required this.imageWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      bottom: bottom,
      right: right,
      child: Image.asset(
        image,
        height: imageHeight,
        width: imageWidth,
        fit: BoxFit.contain,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardIllustration extends StatelessWidget {
  final String image;

  const OnboardIllustration({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        image,
        height: 300,
        width: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pet_app/models/onboard_data.dart';

import 'onboard_description_text.dart';
import 'onboard_illustration.dart';
import 'onboard_title_text.dart';

class OnboardTile extends StatelessWidget {
  final OnboardData data;

  const OnboardTile({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnboardTitleText(title: data.title),
        OnboardIllustration(image: data.image),
        const SizedBox(height: 17),
        OnboardDescriptionText(description: data.description),
        const SizedBox(height: 24),
      ],
    );
  }
}

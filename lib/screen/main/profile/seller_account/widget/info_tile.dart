import 'package:flutter/material.dart';

import 'info_title_text.dart';
import 'info_total_text.dart';

class InfoTile extends StatelessWidget {
  final int total;
  final String title;

  const InfoTile({Key? key, required this.total, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoTotalText(total: total),
        InfoTitleText(title: title),
      ],
    );
  }
}

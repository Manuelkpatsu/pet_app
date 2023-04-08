import 'package:flutter/material.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/theme/custom_color.dart';

class FAQExpansionTile extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final bool initiallyExpanded;

  const FAQExpansionTile({
    Key? key,
    required this.title,
    required this.children,
    this.initiallyExpanded = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded,
        backgroundColor: Colors.transparent,
        collapsedBackgroundColor: Colors.transparent,
        tilePadding: const EdgeInsets.symmetric(horizontal: 24),
        childrenPadding: const EdgeInsets.symmetric(horizontal: 24),
        title: SectionText(padding: EdgeInsets.zero, section: title),
        iconColor: CustomColor.appBarIconColor,
        children: children,
      ),
    );
  }
}

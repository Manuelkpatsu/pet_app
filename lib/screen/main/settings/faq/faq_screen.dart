import 'package:flutter/material.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';

import 'widget/faq_expansion_tile.dart';
import 'widget/faq_info_text.dart';

class FAQScreen extends StatelessWidget {
  static const routeName = '/faq';

  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'FAQ'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10),
            FAQExpansionTile(
              title: 'Security',
              children: [
                FAQInfoText(
                  answer:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris interdum sapien sodales mi sagittis hendrerit. Curabitur ut lectus nec orci cursus rhoncus. ',
                ),
              ],
            ),
            FAQExpansionTile(
              title: 'Security',
              initiallyExpanded: false,
              children: [
                FAQInfoText(
                  answer:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris interdum sapien sodales mi sagittis hendrerit. Curabitur ut lectus nec orci cursus rhoncus. ',
                ),
              ],
            ),
            FAQExpansionTile(
              title: 'Security',
              initiallyExpanded: false,
              children: [
                FAQInfoText(
                  answer:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris interdum sapien sodales mi sagittis hendrerit. Curabitur ut lectus nec orci cursus rhoncus. ',
                ),
              ],
            ),
            FAQExpansionTile(
              title: 'Security',
              initiallyExpanded: false,
              children: [
                FAQInfoText(
                  answer:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris interdum sapien sodales mi sagittis hendrerit. Curabitur ut lectus nec orci cursus rhoncus. ',
                ),
              ],
            ),
            FAQExpansionTile(
              title: 'Security',
              initiallyExpanded: false,
              children: [
                FAQInfoText(
                  answer:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris interdum sapien sodales mi sagittis hendrerit. Curabitur ut lectus nec orci cursus rhoncus. ',
                ),
              ],
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';

import 'widget/info_text.dart';

class PrivacyScreen extends StatelessWidget {
  static const routeName = '/privacy';

  const PrivacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Privacy'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10),
            SectionText(section: 'Term of Use'),
            SizedBox(height: 16),
            InfoText(
              info:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris interdum sapien sodales mi sagittis hendrerit. Curabitur ut lectus nec orci cursus rhoncus. Donec a ultrices risus. Mauris ut erat ut urna rhoncus facilisis a eu neque. Ut iaculis viverra laoreet. In interdum, augue non auctor pharetra, felis ante gravida ante, quis mattis quam eros non quam. Vivamus scelerisque ante nec dapibus convallis. Vestibulum quis scelerisque leo. Vestibulum quis porttitor tellus, non finibus nibh. Quisque ut tempor nulla, sed consectetur tortor. Mauris volutpat viverra arcu non laoreet. Duis eu arcu nunc. Pellentesque ultricies facilisis faucibus. Duis magna sem, ultricies sed scelerisque efficitur, hendrerit at arcu.',
            ),
            SizedBox(height: 30),
            SectionText(section: 'PetApp Service'),
            SizedBox(height: 16),
            InfoText(
              info:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris interdum sapien sodales mi sagittis hendrerit. Curabitur ut lectus nec orci cursus rhoncus. Donec a ultrices risus. Mauris ut erat ut urna rhoncus facilisis a eu neque. Ut iaculis viverra laoreet. In interdum, augue non auctor pharetra, felis ante gravida ante, quis mattis quam eros non quam. Vivamus scelerisque ante nec dapibus convallis. Vestibulum quis scelerisque leo. Vestibulum quis porttitor tellus, non finibus nibh. Quisque ut tempor nulla, sed consectetur tortor. Mauris volutpat viverra arcu non laoreet. Duis eu arcu nunc. Pellentesque ultricies facilisis faucibus. Duis magna sem, ultricies sed scelerisque efficitur, hendrerit at arcu.',
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

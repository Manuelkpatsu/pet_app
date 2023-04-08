import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/screen/main/settings/widget/nav_tile.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';

import 'change_email/change_email_screen.dart';
import 'change_password/change_password_screen.dart';

class SecurityScreen extends StatelessWidget {
  static const routeName = '/security';

  const SecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Security'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const SectionText(section: 'Security'),
          const SizedBox(height: 10),
          NavTile(
            onTap: () {
              Navigator.of(context).pushNamed(ChangePasswordScreen.routeName);
            },
            title: 'Change Password',
            icon: IconlyLight.password,
          ),
          NavTile(
            onTap: () {
              Navigator.of(context).pushNamed(ChangeEmailScreen.routeName);
            },
            title: 'Change Email',
            icon: IconlyLight.password,
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

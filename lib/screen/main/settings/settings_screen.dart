import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_outline_button.dart';

import 'notification_settings/notification_settings_screen.dart';
import 'privacy/privacy_screen.dart';
import 'widget/nav_tile.dart';
import 'widget/section_text.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Settings Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const SectionText(section: 'Account'),
            const SizedBox(height: 10),
            NavTile(
              onTap: () {},
              title: 'Account',
              icon: IconlyLight.profile,
            ),
            NavTile(
              onTap: () {},
              title: 'Address',
              icon: IconlyLight.home,
            ),
            NavTile(
              onTap: () {
                Navigator.of(context).pushNamed(NotificationSettingsScreen.routeName);
              },
              title: 'Notification',
              icon: IconlyLight.notification,
            ),
            NavTile(
              onTap: () {},
              title: 'Payment Method',
              icon: IconlyLight.wallet,
            ),
            NavTile(
              onTap: () {
                Navigator.of(context).pushNamed(PrivacyScreen.routeName);
              },
              title: 'Privacy',
              icon: IconlyLight.danger,
            ),
            NavTile(
              onTap: () {},
              title: 'Security',
              icon: IconlyLight.password,
            ),
            const SizedBox(height: 14),
            const SectionText(section: 'Help'),
            const SizedBox(height: 10),
            NavTile(
              onTap: () {},
              title: 'Contact Us',
              icon: IconlyLight.call,
            ),
            NavTile(
              onTap: () {},
              title: 'FAQ',
              icon: IconlyLight.document,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomOutlineButton(
                onPressed: () {},
                widget: const Text('Log Out'),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

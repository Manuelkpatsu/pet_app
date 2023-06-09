import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/screen/auth/login/login_screen.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';
import 'package:pet_app/screen/widget/custom_outline_button.dart';
import 'package:pet_app/screen/widget/dialogs/logout_dialog.dart';

import 'account/account_screen.dart';
import 'contact_us/contact_us_screen.dart';
import 'faq/faq_screen.dart';
import 'notification_settings/notification_settings_screen.dart';
import 'payment_method/payment_method_screen.dart';
import 'privacy/privacy_screen.dart';
import 'security/security_screen.dart';
import 'widget/nav_tile.dart';
import 'widget/section_text.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
              onTap: () {
                Navigator.of(context).pushNamed(AccountScreen.routeName);
              },
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
              onTap: () {
                Navigator.of(context).pushNamed(PaymentMethodScreen.routeName);
              },
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
              onTap: () {
                Navigator.of(context).pushNamed(SecurityScreen.routeName);
              },
              title: 'Security',
              icon: IconlyLight.password,
            ),
            const SizedBox(height: 14),
            const SectionText(section: 'Help'),
            const SizedBox(height: 10),
            NavTile(
              onTap: () {
                Navigator.of(context).pushNamed(ContactUsScreen.routeName);
              },
              title: 'Contact Us',
              icon: IconlyLight.call,
            ),
            NavTile(
              onTap: () {
                Navigator.of(context).pushNamed(FAQScreen.routeName);
              },
              title: 'FAQ',
              icon: IconlyLight.document,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomOutlineButton(
                onPressed: () async {
                  final shouldLogOut = await showLogOutDialog(context);
                  if (shouldLogOut) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      LoginScreen.routeName,
                      (route) => false,
                    );
                  }
                },
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

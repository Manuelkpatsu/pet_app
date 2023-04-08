import 'package:flutter/material.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';

import 'widget/notification_settings_switch_tile.dart';

class NotificationSettingsScreen extends StatefulWidget {
  static const routeName = '/notification_settings';

  const NotificationSettingsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  bool _isPostLiked = true;
  bool _isNewMessage = true;
  bool _isItemSold = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Notification'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const SectionText(section: 'Social'),
            const SizedBox(height: 10),
            NotificationSettingsSwitchTile(
              title: 'Liked Post',
              value: _isPostLiked,
              onChanged: (value) {
                setState(() {
                  _isPostLiked = value;
                });
              },
            ),
            NotificationSettingsSwitchTile(
              title: 'New Message',
              value: _isNewMessage,
              onChanged: (value) {
                setState(() {
                  _isNewMessage = value;
                });
              },
            ),
            const SizedBox(height: 14),
            const SectionText(section: 'Store'),
            NotificationSettingsSwitchTile(
              title: 'Item Sold',
              value: _isItemSold,
              onChanged: (value) {
                setState(() {
                  _isItemSold = value;
                });
              },
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pet_app/models/notification_data.dart';
import 'package:pet_app/screen/main/notification/widget/notification_tile.dart';

class ActivityNotifications extends StatelessWidget {
  final List<NotificationData> notifications;

  const ActivityNotifications({Key? key, required this.notifications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (ctx, index) {
          NotificationData notification = notifications[index];

          return NotificationTile(
            notificationData: notification,
            onTap: () {},
          );
        },
      ),
    );
  }
}

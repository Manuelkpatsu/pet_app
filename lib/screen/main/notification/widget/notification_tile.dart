import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pet_app/models/notification_data.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'notification_image.dart';
import 'notification_message.dart';
import 'notification_title.dart';

class NotificationTile extends StatelessWidget {
  final NotificationData notificationData;
  final VoidCallback? onTap;

  const NotificationTile({
    Key? key,
    required this.notificationData,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        child: Row(
          children: [
            NotificationImage(
              image: notificationData.user == null
                  ? notificationData.product.image
                  : notificationData.user!.image,
              backgroundColor: notificationData.user == null ? CustomColor.imageColor : null,
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NotificationTitle(
                    title: notificationData.user == null
                        ? notificationData.title!
                        : notificationData.user!.name,
                  ),
                  NotificationMessage(message: notificationData.message),
                ],
              ),
            ),
            const SizedBox(width: 10),
            notificationData.user == null
                ? const Icon(
                    IconlyLight.arrow_right_2,
                    color: Colors.black,
                    size: 16,
                  )
                : NotificationImage(
                    image: notificationData.product.image,
                    backgroundColor: CustomColor.imageColor,
                  ),
          ],
        ),
      ),
    );
  }
}

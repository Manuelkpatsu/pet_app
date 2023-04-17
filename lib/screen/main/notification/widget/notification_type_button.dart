import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'notification_type.dart';

class NotificationTypeButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final NotificationType type;
  final bool isSelected;

  const NotificationTypeButton({
    Key? key,
    required this.onPressed,
    required this.type,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String notificationTypeText() {
      switch (type) {
        case NotificationType.activity:
          return "Activity";
        case NotificationType.seller:
          return "Seller Mode";
      }
    }

    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(5),
          backgroundColor: isSelected ? CustomColor.primaryColor : Colors.transparent,
          foregroundColor: isSelected ? Colors.white : CustomColor.hintColor,
          shape: isSelected
              ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )
              : null,
          elevation: 0,
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
        child: Text(notificationTypeText()),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_app/theme/custom_color.dart';

class NotificationSettingsSwitchTile extends StatelessWidget {
  final String title;
  final bool value;
  final void Function(bool)? onChanged;

  const NotificationSettingsSwitchTile({
    Key? key,
    required this.title,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      dense: true,
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.50,
        ),
      ),
      trailing: Transform.scale(
        scale: 0.8,
        child: CupertinoSwitch(
          activeColor: CustomColor.primaryColor,
          trackColor: CustomColor.inactiveTrackColor,
          thumbColor: Colors.white,
          value: value,
          onChanged: onChanged,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AppSnackBar extends SnackBar {
  AppSnackBar(
    String message, {
    Key? key,
    SnackType type = SnackType.success,
    int duration = 4,
  }) : super(
          key: key,
          content: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          type.icon,
                          size: 25,
                          color: type.backgroundColor,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          type.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: type.backgroundColor,
                          ),
                        ),
                      ],
                    ),
                    Ink(
                      decoration: ShapeDecoration(
                        color: type.backgroundColor.withOpacity(0.2),
                        shape: const CircleBorder(),
                      ),
                      child: IconButton(
                        splashRadius: 20,
                        visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity,
                        ),
                        onPressed: () =>
                            GlobalKey<ScaffoldMessengerState>().currentState!.hideCurrentSnackBar(),
                        icon: Icon(
                          Icons.close,
                          color: type.backgroundColor,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Text(
                    message,
                    style: TextStyle(
                      color: type.backgroundColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: const Color(0xffeaecef),
          duration: Duration(seconds: duration),
          behavior: SnackBarBehavior.floating,
          elevation: 3,
          dismissDirection: DismissDirection.up,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        );
}

enum SnackType { error, success, info, warning }

extension SnackTypeExtension on SnackType {
  Color get backgroundColor {
    switch (this) {
      case SnackType.success:
        return const Color(0xff2D6A4F);
      case SnackType.error:
        return const Color(0xffc72c41);
      case SnackType.info:
        return const Color(0xff3282B8);
      case SnackType.warning:
        return const Color(0xffFCA652);
    }
  }

  String get title {
    switch (this) {
      case SnackType.success:
        return "Success";
      case SnackType.error:
        return "Error";
      case SnackType.info:
        return "Info";
      case SnackType.warning:
        return "Warning";
    }
  }

  IconData get icon {
    switch (this) {
      case SnackType.success:
        return Icons.check_circle_rounded;
      case SnackType.error:
        return Icons.error;
      case SnackType.info:
        return IconlyBold.info_circle;
      case SnackType.warning:
        return Icons.warning_rounded;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:pet_app/models/notification_data.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/models/user.dart';
import 'package:pet_app/screen/main/profile/widget/toggle_account.dart';
import 'package:pet_app/screen/widget/app_bar_title.dart';

import 'activity_notifications/activity_notifications.dart';
import 'seller_notifications/seller_notifications.dart';
import 'widget/notification_type.dart';
import 'widget/notification_type_button.dart';

class NotificationScreen extends StatefulWidget {
  static const routeName = '/notification';

  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  NotificationType _selectedNotificationType = NotificationType.activity;
  final List<NotificationData> _activityNotifications = [
    const NotificationData(
      id: 1,
      title: 'SALE 50%',
      message: 'Check the details!',
      user: null,
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 2,
      title: 'SALE 50%',
      message: 'Check the details!',
      user: null,
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 3,
      title: 'SALE 50%',
      message: 'Check the details!',
      user: null,
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 4,
      title: 'SALE 50%',
      message: 'Check the details!',
      user: null,
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
  ];
  final List<NotificationData> _sellerNotifications = [
    const NotificationData(
      id: 1,
      title: 'SALE 50%',
      message: 'Check the details!',
      user: null,
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 2,
      title: null,
      message: 'Liked your product',
      user: User(
        id: 1,
        name: 'Momon',
        image: 'assets/images/users/user-1.png',
      ),
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 3,
      title: null,
      message: 'Liked your product',
      user: User(
        id: 2,
        name: 'Ola',
        image: 'assets/images/users/user-2.png',
      ),
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 4,
      title: null,
      message: 'Liked your product',
      user: User(
        id: 3,
        name: 'Raul',
        image: 'assets/images/users/user-3.png',
      ),
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 5,
      title: 'SALE 50%',
      message: 'Check the details!',
      user: null,
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 6,
      title: 'SALE 50%',
      message: 'Check the details!',
      user: null,
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 7,
      title: 'SALE 50%',
      message: 'Check the details!',
      user: null,
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
    const NotificationData(
      id: 8,
      title: null,
      message: 'Liked your product',
      user: User(
        id: 4,
        name: 'Vito',
        image: 'assets/images/users/user-4.png',
      ),
      product: Product(
        id: 1,
        image: 'assets/images/products/product-2.png',
        name: 'RC Kitten',
        price: 20.99,
        description:
            "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Notification'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          ToggleAccount(
            widget: Row(
              children: NotificationType.values.map((type) {
                return NotificationTypeButton(
                  type: type,
                  isSelected: _selectedNotificationType == type,
                  onPressed: () {
                    setState(() {
                      if (_selectedNotificationType != type) {
                        _selectedNotificationType = type;
                      }
                    });
                  },
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          _selectedNotificationType == NotificationType.activity
              ? ActivityNotifications(notifications: _activityNotifications)
              : SellerNotifications(notifications: _sellerNotifications),
        ],
      ),
    );
  }
}

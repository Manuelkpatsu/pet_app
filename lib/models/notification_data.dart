import 'package:equatable/equatable.dart';

import 'product.dart';
import 'user.dart';

class NotificationData extends Equatable {
  final int id;
  final String? title;
  final String message;
  final User? user;
  final Product product;

  const NotificationData({
    required this.id,
    required this.title,
    required this.message,
    required this.user,
    required this.product,
  });

  @override
  List<Object?> get props => [id, title, message, user, product];
}

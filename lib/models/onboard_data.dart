import 'package:equatable/equatable.dart';

class OnboardData extends Equatable {
  final String title;
  final String image;
  final String description;

  const OnboardData({required this.title, required this.image, required this.description});

  @override
  List<Object?> get props => [title, image, description];
}

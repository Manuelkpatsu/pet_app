import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  static const routeName = '/onboard';

  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Onboard Screen'),
      ),
    );
  }
}

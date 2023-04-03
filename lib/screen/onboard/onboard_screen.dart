import 'package:flutter/material.dart';
import 'package:pet_app/models/onboard_data.dart';
import 'package:pet_app/screen/auth/login/login_screen.dart';
import 'package:pet_app/screen/widget/custom_button.dart';
import 'package:pet_app/theme/custom_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widget/onboard_tile.dart';

class OnboardScreen extends StatefulWidget {
  static const routeName = '/onboard';

  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  final List<OnboardData> _data = [
    const OnboardData(
      title: 'Meet your\nanimal needs\nhere',
      image: 'assets/images/onboard/1.svg',
      description:
          'Get interesting promos here, register your account immediately so you can meet your animal needs.',
    ),
    const OnboardData(
      title: 'Meet your\nanimal needs\nhere',
      image: 'assets/images/onboard/2.svg',
      description:
          'Get interesting promos here, register your account immediately so you can meet your animal needs.',
    ),
    const OnboardData(
      title: 'Meet your\nanimal needs\nhere',
      image: 'assets/images/onboard/3.svg',
      description:
          'Get interesting promos here, register your account immediately so you can meet your animal needs.',
    ),
  ];
  int currentPage = 0;
  bool get lastPage => currentPage == _data.length - 1;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Expanded(
                child: PageView(
                  controller: _controller,
                  onPageChanged: _onPageChanged,
                  children: _data.map((onboardData) => OnboardTile(data: onboardData)).toList(),
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: _data.length,
                effect: const WormEffect(
                  spacing: 5,
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: CustomColor.textFieldBorderColor,
                  activeDotColor: CustomColor.primaryColor,
                ),
                onDotClicked: (index) => _controller.animateToPage(
                  index,
                  duration: const Duration(microseconds: 300),
                  curve: Curves.easeIn,
                ),
              ),
              const SizedBox(height: 50),
              CustomButton(
                widget: lastPage ? const Text("Get Started") : const Text("Next"),
                onPressed: lastPage
                    ? () => Navigator.of(context).pushReplacementNamed(LoginScreen.routeName)
                    : () => _controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

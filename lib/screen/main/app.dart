import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pet_app/theme/custom_color.dart';

import 'cart/cart_screen.dart';
import 'chat/chat_screen.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';

class MainApp extends StatefulWidget {
  static const routeName = '/main';

  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late PersistentTabController _controller;
  List<Widget> _buildScreens() => [
        const HomeScreen(),
        const ChatScreen(),
        const CartScreen(),
        const ProfileScreen(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.home, size: 24),
          inactiveIcon: const Icon(IconlyLight.home, size: 24),
          activeColorPrimary: CustomColor.primaryColor,
          inactiveColorPrimary: CustomColor.hintColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.chat, size: 24),
          inactiveIcon: const Icon(IconlyLight.chat, size: 24),
          activeColorPrimary: CustomColor.primaryColor,
          inactiveColorPrimary: CustomColor.hintColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.bag, size: 24),
          inactiveIcon: const Icon(IconlyLight.bag, size: 24),
          activeColorPrimary: CustomColor.primaryColor,
          inactiveColorPrimary: CustomColor.hintColor,
        ),
        PersistentBottomNavBarItem(
          icon: const Icon(IconlyBold.profile, size: 24),
          inactiveIcon: const Icon(IconlyLight.profile, size: 24),
          activeColorPrimary: CustomColor.primaryColor,
          inactiveColorPrimary: CustomColor.hintColor,
        ),
      ];
  int _initialIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: _initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: CustomColor.productBackgroundColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      decoration: const NavBarDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(45), bottom: Radius.zero),
        colorBehindNavBar: Colors.white,
      ),
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style12,
      onItemSelected: (index) {
        setState(() => _initialIndex = index);
      },
    );
  }
}

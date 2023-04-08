import 'package:flutter/material.dart';

import 'screen/auth/forgot_password/forgot_password_screen.dart';
import 'screen/auth/login/login_screen.dart';
import 'screen/auth/otp_verification/otp_verification_screen.dart';
import 'screen/auth/register/register_screen.dart';
import 'screen/auth/reset_password/reset_password_screen.dart';
import 'screen/main/app.dart';
import 'screen/main/cart/cart_screen.dart';
import 'screen/main/favorite/favorite_screen.dart';
import 'screen/main/home/home_screen.dart';
import 'screen/main/profile/profile_screen.dart';
import 'screen/main/settings/notification_settings/notification_settings_screen.dart';
import 'screen/main/settings/privacy/privacy_screen.dart';
import 'screen/main/settings/settings_screen.dart';
import 'screen/onboard/onboard_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnboardScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardScreen());
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case RegisterScreen.routeName:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
    case ForgotPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
    case OTPVerificationScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OTPVerificationScreen());
    case ResetPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
    case MainApp.routeName:
      return MaterialPageRoute(builder: (_) => const MainApp());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case FavoriteScreen.routeName:
      return MaterialPageRoute(builder: (_) => const FavoriteScreen());
    case CartScreen.routeName:
      return MaterialPageRoute(builder: (_) => const CartScreen());
    case ProfileScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ProfileScreen());
    case SettingsScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SettingsScreen());
    case NotificationSettingsScreen.routeName:
      return MaterialPageRoute(builder: (_) => const NotificationSettingsScreen());
    case PrivacyScreen.routeName:
      return MaterialPageRoute(builder: (_) => const PrivacyScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      );
  }
}

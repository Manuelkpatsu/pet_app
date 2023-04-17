import 'package:flutter/material.dart';

import 'screen/auth/forgot_password/forgot_password_screen.dart';
import 'screen/auth/login/login_screen.dart';
import 'screen/auth/otp_verification/otp_verification_screen.dart';
import 'screen/auth/register/register_screen.dart';
import 'screen/auth/reset_password/reset_password_screen.dart';
import 'screen/main/app.dart';
import 'screen/main/best_seller/best_seller_screen.dart';
import 'screen/main/cart/cart_screen.dart';
import 'screen/main/favorite/favorite_screen.dart';
import 'screen/main/home/home_screen.dart';
import 'screen/main/notification/notification_screen.dart';
import 'screen/main/payment/payment_screen.dart';
import 'screen/main/payment_success/payment_success_screen.dart';
import 'screen/main/profile/profile_screen.dart';
import 'screen/main/search/search_screen.dart';
import 'screen/main/settings/account/account_screen.dart';
import 'screen/main/settings/add_new_payment_method/add_new_payment_method_screen.dart';
import 'screen/main/settings/contact_us/contact_us_screen.dart';
import 'screen/main/settings/faq/faq_screen.dart';
import 'screen/main/settings/notification_settings/notification_settings_screen.dart';
import 'screen/main/settings/payment_method/payment_method_screen.dart';
import 'screen/main/settings/privacy/privacy_screen.dart';
import 'screen/main/settings/security/change_email/change_email_screen.dart';
import 'screen/main/settings/security/change_password/change_password_screen.dart';
import 'screen/main/settings/security/security_screen.dart';
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
    case SecurityScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SecurityScreen());
    case ChangePasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
    case ChangeEmailScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ChangeEmailScreen());
    case FAQScreen.routeName:
      return MaterialPageRoute(builder: (_) => const FAQScreen());
    case ContactUsScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ContactUsScreen());
    case PaymentMethodScreen.routeName:
      return MaterialPageRoute(builder: (_) => const PaymentMethodScreen());
    case AddNewPaymentMethodScreen.routeName:
      return MaterialPageRoute(builder: (_) => const AddNewPaymentMethodScreen());
    case AccountScreen.routeName:
      return MaterialPageRoute(builder: (_) => const AccountScreen());
    case PaymentScreen.routeName:
      double argument = settings.arguments as double;
      return MaterialPageRoute(builder: (_) => PaymentScreen(amount: argument));
    case PaymentSuccessScreen.routeName:
      return MaterialPageRoute(builder: (_) => const PaymentSuccessScreen());
    case BestSellerScreen.routeName:
      return MaterialPageRoute(builder: (_) => const BestSellerScreen());
    case NotificationScreen.routeName:
      return MaterialPageRoute(builder: (_) => const NotificationScreen());
    case SearchScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SearchScreen());
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

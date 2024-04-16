import 'package:flutter/material.dart';
import 'package:foodie_app/core/definations/routes_name.dart';
import 'package:foodie_app/view/authentication/forgot_password_screen.dart/forgot_password_screen.dart';
import 'package:foodie_app/view/authentication/login/login_screen.dart';
import 'package:foodie_app/view/authentication/otp_screen/otp_screen.dart';
import 'package:foodie_app/view/authentication/signup/signup_screen.dart';
import 'package:foodie_app/view/splash_screen/splash_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RoutesName.signup:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case RoutesName.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
      case RoutesName.otpScreen:
        return MaterialPageRoute(builder: (_) => const OtpScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

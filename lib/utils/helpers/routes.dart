import 'package:flutter/material.dart';
import 'package:shoplon/screens/login/login_screen.dart';
import 'package:shoplon/screens/onboarding/onboarding_screen.dart';

class Routes {
  static const String onboarding = '/';
static const String login = '/login';
static const String signup = '/signup';
static Map<String, Widget Function(BuildContext)> appRoutes = {
  Routes.onboarding: (context) =>  const OnboardingScreen(),
  Routes.login : (context) =>  const LoginScreen(),
 // Routes.signup : (context) =>  const SignupScreen(),
};
}
import 'package:fitness_x_app/features/auth/login/view/login_screen.dart';
import 'package:fitness_x_app/features/onBoarding/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/auth/register/view/register_screen.dart';
import '../../features/auth/register/view/welcome_screen.dart';
import '../../features/auth/register/view/widgets/register_page_2.dart';
import '../../features/auth/register/view/widgets/register_page_3.dart';
import '../../features/onBoarding/view/start_screen.dart';

class AppRoutes {
  static const String startScreen = "/splash";
  static const String onBoarding = "/onBoarding";
  static const String login = "/login";
  static const String register = "/register";
  static const String register2 = "/register2";
  static const String register3 = "/register3";
  static const String home = "/home";
  static const String profile = "/profile";
  static const String settings = "/settings";
  static const String welcome = "/Welcome";

  static Map<String, Widget Function(BuildContext)> routes = {
    register: (context) => const RegisterScreen(),
    login: (context) => const LoginScreen(),
    register2: (context) => const RegisterPage2(),
    register3: (context) => const RegisterPage3(),
    welcome : (context) => const WelcomeScreen(),

    startScreen: (context) => const StartScreen(),
    onBoarding: (context) => OnBoardingScreen(),
  };
}

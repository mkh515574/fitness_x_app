import 'package:fitness_x_app/features/auth/login/view/login_screen.dart';
import 'package:fitness_x_app/features/onBording/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/auth/register/view/register_screen.dart';
import '../../features/onBording/view/start_screen.dart';


class AppRoutes {

  static const String startScreen = "/splash";
  static const String onBoarding = "/onBoarding";
  static const String login = "/login";
  static const String register = "/register";
  static const String home = "/home";




  static Map<String, Widget Function(BuildContext)> routes = {
    register: (context) => const RegisterScreen(),
    login: (context) => const LoginScreen(),

    startScreen: (context) => const StartScreen(),
    onBoarding: (context) =>  OnBoardingScreen(),

  };
}

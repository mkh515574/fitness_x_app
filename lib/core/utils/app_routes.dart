import 'package:fitness_x_app/features/onBording/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';

import '../../features/onBording/view/start_screen.dart';


class AppRoutes {

  static const String startScreen = "/splash";
  static const String onBoarding = "/onBoarding";



  static Map<String, Widget Function(BuildContext)> routes = {

    startScreen: (context) => const StartScreen(),
    onBoarding: (context) =>  OnBoardingScreen(),

  };
}

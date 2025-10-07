import 'package:flutter/material.dart';

import '../../features/onBording/view/on_boarding_screen.dart';


class AppRoutes {

  static const String onBoarding = "/onBoarding";



  static Map<String, Widget Function(BuildContext)> routes = {

    onBoarding: (context) => const OnBoardingScreen(),

  };
}

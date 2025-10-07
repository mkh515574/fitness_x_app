import 'package:fitness_x_app/core/utils/app_routes.dart';
import 'package:fitness_x_app/core/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness X App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: AppRoutes.onBoarding,
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}

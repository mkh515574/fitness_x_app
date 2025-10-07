import 'package:fitness_x_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_routes.dart';
import '../../../core/widgets/custom_elevated_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 24.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  AppAssets.appLogo,
                  height: 200,
                  width: 375.w,
                ),
              ),
              SizedBox(height: 20.h),

              CustomElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.onBoarding);
                },

                text: "Get Started",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

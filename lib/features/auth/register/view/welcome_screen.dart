import 'package:fitness_x_app/core/utils/app_assets.dart';
import 'package:fitness_x_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/custom_elevated_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 24.w),
          child: Column(
            children: [
              Image.asset(AppAssets.welcome, height: 300.h, width: 375.w),
              SizedBox(height: 45.h),
              Text("Welcome, Stefani ", style: AppStyles.bold20BlackText),
              SizedBox(height: 10.h),
              Text(
                "You are all set now, let’s reach\n your goals together with us",
                style: AppStyles.regular14GrayText,
                textAlign: TextAlign.center,
              ),
              Spacer(),
              CustomElevatedButton(onPressed: () {}, text: "Go To Home"),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fitness_x_app/core/utils/app_assets.dart';
import 'package:fitness_x_app/core/utils/app_colors.dart';
import 'package:fitness_x_app/core/utils/app_styles.dart';
import 'package:fitness_x_app/features/auth/login/view/widgets/login_form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Hey there,", style: AppStyles.regular16BlackText),
              SizedBox(height: 16.h),
              Text("Login To Account", style: AppStyles.bold20BlackText),
              SizedBox(height: 100.h),
              LoginFormBody(),
              Spacer(),
              _buildOrDivider(),
              SizedBox(height: 20.h),
              _buildSocialAuth(),
              SizedBox(height: 10.h),
              _buildLoginNavigation(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSocialAuth() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    GestureDetector(onTap: () {}, child: Image.asset(AppAssets.googleIcon)),
    SizedBox(width: 16.w),
    GestureDetector(onTap: () {}, child: Image.asset(AppAssets.facebookIcon)),
  ],
);



Widget _buildOrDivider() => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Expanded(
      child: Divider(
        endIndent: 15.w,
        indent: 20.w,
        height: 2.h,
        color: AppColors.gray3Color,
      ),
    ),
    Text("Or", style: AppStyles.regular16BlackText),
    Expanded(
      child: Divider(
        indent: 15.w,
        endIndent: 20.w,

        height: 2.h,
        color: AppColors.gray3Color,
      ),
    ),
  ],
);




Widget _buildLoginNavigation(context) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: AppStyles.regular16BlackText.copyWith(fontSize: 14),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.register);
          },
          child: Text("Register", style: AppStyles.bold16BlueLinerText),
        ),
      ],
    );

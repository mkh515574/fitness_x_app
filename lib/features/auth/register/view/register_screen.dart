import 'package:fitness_x_app/core/utils/app_assets.dart';
import 'package:fitness_x_app/core/utils/app_colors.dart';
import 'package:fitness_x_app/core/utils/app_styles.dart';
import 'package:fitness_x_app/features/auth/register/view/widgets/register_form_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Hey there,", style: AppStyles.regular16BlackText),
                SizedBox(height: 10.h),
                Text("Create an Account", style: AppStyles.bold20BlackText),
                SizedBox(height: 30.h),
                RegisterFormBody(),
                SizedBox(height: 10.h),
                _buildOrDivider(),
                SizedBox(height: 10.h),
                _buildSocialAuth(),
                SizedBox(height: 10.h),
                _buildLoginNavigation(context)
              ],
            ),
          ),
        ),
      )
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
          "Already have an account?",
          style: AppStyles.regular16BlackText.copyWith(fontSize: 14.sp),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.login);
          },
          child: Text("Login", style: AppStyles.bold16BlueLinerText),
        ),
      ],
    );

import 'package:fitness_x_app/core/utils/app_assets.dart';
import 'package:fitness_x_app/core/utils/app_colors.dart';
import 'package:fitness_x_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';

class LoginFormBody extends StatelessWidget {
  const LoginFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            controller: TextEditingController(),
            fillColor: AppColors.gray2Color,
            prefixIcon: Image.asset(AppAssets.emailIcon),
            hintText: "Email",
          ),
          SizedBox(height: 20.h),
          CustomTextFormField(
            controller: TextEditingController(),
            fillColor: AppColors.gray2Color,
            prefixIcon: Image.asset(AppAssets.passwordIcon),
            suffixIcon: Icon(Icons.visibility_off, color: AppColors.gray3Color),
            hintText: "Password",
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?",
              style: AppStyles.regular14GrayText.copyWith(
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.end,
            ),
          ),

          SizedBox(height: 50.h),
          CustomElevatedButton(onPressed: () {}, text: "Login",buttonContent:Image.asset(AppAssets.loginIcon),),
        ],
      ),
    );
  }
}

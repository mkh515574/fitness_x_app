import 'package:fitness_x_app/core/utils/app_assets.dart';
import 'package:fitness_x_app/core/utils/app_colors.dart';
import 'package:fitness_x_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';

class RegisterFormBody extends StatelessWidget {
  const RegisterFormBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            controller: TextEditingController(),
            fillColor: AppColors.gray2Color,
            prefixIcon: Image.asset(AppAssets.nameIcon),
            hintText: "First Name",
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            controller: TextEditingController(),
            fillColor: AppColors.gray2Color,
            prefixIcon: Image.asset(AppAssets.nameIcon),
            hintText: "Last Name",
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            controller: TextEditingController(),
            fillColor: AppColors.gray2Color,
            prefixIcon: Image.asset(AppAssets.emailIcon),
            hintText: "Email",
          ),
          SizedBox(height: 16.h),
          CustomTextFormField(
            controller: TextEditingController(),
            fillColor: AppColors.gray2Color,
            prefixIcon: Image.asset(AppAssets.passwordIcon),
            suffixIcon: Icon(Icons.visibility_off, color: AppColors.gray3Color),
            hintText: "Password",
          ),
          SizedBox(height: 16.h),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(value: false, onChanged: (value) {},side: BorderSide(
                color: AppColors.gray3Color,
                width: 1.w,
              ),),
              Expanded(
                child: RichText(

                  textAlign: TextAlign.start,
                  maxLines: 2,
                  text: TextSpan(
                    style: AppStyles.regular12GrayText,
                    children: [
                      const TextSpan(text: 'By continuing you accept our '),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const TextSpan(text: ' and '),
                      TextSpan(
                        text: 'Term of Use',

                        style: const TextStyle(

                          decoration: TextDecoration.underline,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 80.h),
          CustomElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/register2");
            },
            text: "Register",
          ),









        ],
      ),
    );
  }
}

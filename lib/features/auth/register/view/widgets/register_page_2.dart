import 'package:fitness_x_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_x_app/core/utils/app_assets.dart';
import 'package:fitness_x_app/core/utils/app_colors.dart';
import 'package:fitness_x_app/core/utils/app_styles.dart';
import 'package:fitness_x_app/core/widgets/custom_elevated_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';

class RegisterPage2 extends StatefulWidget {
  const RegisterPage2({super.key});

  @override
  State<RegisterPage2> createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  final genderController = TextEditingController();
  final birthDateController = TextEditingController();
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  @override
  void dispose() {
    genderController.dispose();
    birthDateController.dispose();
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.register, height: 300.h, width: 375.w),
              SizedBox(height: 15.h),

              Text(
                "Let’s complete your profile",
                style: AppStyles.bold20BlackText,
              ),
              SizedBox(height: 5.h),

              Text(
                "It will help us to know more about you!",
                style: AppStyles.regular12GrayText.copyWith(fontSize: 12),
              ),
              SizedBox(height: 20.h),

              // Gender field
              GestureDetector(
                onTap: () async {
                  final selectedGender = await showModalBottomSheet<String>(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20.r),
                      ),
                    ),
                    builder: (context) => Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Select Gender",
                            style: AppStyles.bold20BlackText.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 20.h),
                          ListTile(
                            leading: Icon(
                              Icons.male,
                              color: AppColors.purpleColor,
                            ),
                            title: Text(
                              "Male",
                              style: AppStyles.regular14GrayText.copyWith(
                                fontSize: 14,
                                color: AppColors.blackColor,
                              ),
                            ),
                            onTap: () => Navigator.pop(context, "Male"),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.female,
                              color: AppColors.purpleEndColor,
                            ),
                            title: Text(
                              "Female",
                              style: AppStyles.regular14GrayText.copyWith(
                                fontSize: 14,
                                color: AppColors.blackColor,
                              ),
                            ),
                            onTap: () => Navigator.pop(context, "Female"),
                          ),
                        ],
                      ),
                    ),
                  );

                  if (selectedGender != null) {
                    setState(() => genderController.text = selectedGender);
                  }
                },
                child: CustomTextFormField(
                  controller: genderController,
                  prefixIcon: Image.asset(AppAssets.genderIcon),
                  fillColor: AppColors.gray2Color,
                  hintText: "Choose Gender",
                  enabled: false,
                  suffixIcon: Icon(
                    Icons.arrow_drop_down_outlined,
                    color: AppColors.gray3Color,
                    size: 24.sp,
                  ),
                ),
              ),
              SizedBox(height: 12.h),

              GestureDetector(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2000),
                    firstDate: DateTime(1950),
                    lastDate: DateTime.now(),
                    builder: (context, child) {
                      return Theme(
                        data: Theme.of(context).copyWith(
                          colorScheme: ColorScheme.light(
                            primary: AppColors.purpleColor,
                            onPrimary: Colors.white,
                            onSurface: AppColors.blackColor,
                          ),
                        ),
                        child: child!,
                      );
                    },
                  );

                  if (pickedDate != null) {
                    setState(() {
                      birthDateController.text =
                          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    });
                  }
                },
                child: CustomTextFormField(
                  controller: birthDateController,
                  prefixIcon: Image.asset(AppAssets.calendarIcon),
                  fillColor: AppColors.gray2Color,
                  hintText: "Date of Birth",
                  enabled: false,
                ),
              ),
              SizedBox(height: 12.h),

              // Weight field
              _buildWeightOrHeightField(
                controller: weightController,
                hintText: "Your Weight",
                prefixIcon: AppAssets.weightIcon,
                suffixText: "KG",
              ),
              SizedBox(height: 12.h),

              // Height field
              _buildWeightOrHeightField(
                controller: heightController,
                hintText: "Your Height",
                prefixIcon: AppAssets.heightIcon,
                suffixText: "CM",
              ),
              SizedBox(height: 30.h),

              // Next button
              CustomElevatedButton(
                onPressed: () {
                  // TODO: Navigate to next page or save data

                  Navigator.pushReplacementNamed(context, AppRoutes.register3);
                },
                text: "Next",
                buttonContent1: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AppColors.whiteColor,
                  size: 20.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWeightOrHeightField({
    required TextEditingController controller,
    required String hintText,
    required String prefixIcon,
    required String suffixText,
  }) {
    return Row(
      children: [
        Expanded(
          child: CustomTextFormField(
            controller: controller,
            prefixIcon: Image.asset(prefixIcon),
            fillColor: AppColors.gray2Color,
            hintText: hintText,
            keyboardType: TextInputType.number,
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          height: 48.h,
          width: 48.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.purpleColor, AppColors.purpleEndColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Text(suffixText, style: AppStyles.bold16WhiteText),
        ),
      ],
    );
  }
}

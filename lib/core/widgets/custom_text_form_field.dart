import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

typedef OnValidator = String? Function(String?)?;

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.colorBorderSide = AppColors.whiteColor,
    this.cursorColor,
    this.hintText,
    this.fillColor = AppColors.whiteColor,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.enabled = true,
    this.maxLines = 1,
  });
  final Color colorBorderSide;
  final Color? cursorColor;
  final Color? fillColor;
  final String? hintText;
  final String? labelText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final OnValidator? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String obscuringCharacter;
  final int maxLines;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        filled: true,
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.transparentColor, width: 2),
        ),
        enabled: enabled!,
        fillColor: fillColor?? AppColors.whiteColor,
        enabledBorder: builtOutlinedInputBorder(
          colorBorderSide: colorBorderSide,
        ),
        focusedBorder: builtOutlinedInputBorder(
          colorBorderSide: colorBorderSide,
        ),
        errorBorder: builtOutlinedInputBorder(
          colorBorderSide: AppColors.redColor,
        ),
        focusedErrorBorder: builtOutlinedInputBorder(
          colorBorderSide: AppColors.redColor,
        ),
        hintText: hintText,
        hintStyle: hintStyle ?? AppStyles.regular14GrayText,
        labelText: labelText,
        labelStyle: labelStyle ?? AppStyles.regular14GrayText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        errorStyle: AppStyles.bold16WhiteText.copyWith(color: AppColors.redColor),
      ),
      style: hintStyle,
      cursorColor: cursorColor,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,

      maxLines: maxLines,
    );
  }

  OutlineInputBorder builtOutlinedInputBorder({
    required Color colorBorderSide,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: colorBorderSide, width: 2),
    );
  }
}

import 'package:fitness_x_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    this.borderSideColor,
    this.textStyle,
    required this.text,
    this.buttonContent,
    this.buttonContent1,
  });

  final VoidCallback? onPressed;
  final Color? borderSideColor;
  final TextStyle? textStyle;
  final String text;
  final Widget? buttonContent;
  final Widget? buttonContent1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 60.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.secondaryColor,
            AppColors.primaryColor,

          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(99),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(99),
            side: BorderSide(
              color: borderSideColor ?? AppColors.whiteColor,
              width: 1.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (buttonContent != null) ...[
              buttonContent!,
              const SizedBox(width: 10),
            ],
            Text(
              text,
              style: textStyle ?? AppStyles.bold16WhiteText,
            ),
            if (buttonContent1 != null) ...[
              const SizedBox(width: 10),
              buttonContent1!,
            ],
          ],
        ),
      ),
    );
  }
}

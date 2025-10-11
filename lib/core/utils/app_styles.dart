import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles {
  static TextStyle bold16WhiteText = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );

  static TextStyle bold16BlueLinerText = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

  static TextStyle bold24BlackText = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );
  static TextStyle bold20BlackText = GoogleFonts.poppins(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );
  static TextStyle regular14GrayText = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.grayColor,
  );
 static TextStyle regular12GrayText = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.gray3Color,
  );

  static TextStyle regular16BlackText = GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: AppColors.blackColor,
  );
}

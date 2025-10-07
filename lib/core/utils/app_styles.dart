import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles {

    static TextStyle bold16WhiteText = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
  );

    static TextStyle bold16BlueLinerText = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );

    static TextStyle bold24BlackText = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
  );
    static TextStyle regular14GrayText = GoogleFonts.poppins(
      fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.grayColor,


    );




}

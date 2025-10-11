import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/utils/app_assets.dart';

class ItemSliderView extends StatelessWidget {
  final int index;
  final int currentPage;

  const ItemSliderView({
    super.key,
    required this.index,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    final goals = [
      {
        "title": "Improve Shape",
        "desc":
        "I have a low amount of body fat and need / want to build more muscle",
        "image": AppAssets.improveShape,
      },
      {
        "title": "Lean & Tone",
        "desc":
        "I’m “skinny fat”. Look thin but have no shape. I want to add lean muscle in the right way",
        "image": AppAssets.leanTone,
      },
      {
        "title": "Lose a Fat",
        "desc":
        "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass",
        "image": AppAssets.loseAFat,
      },
    ];

    final isActive = index == currentPage;

    return InkWell(
      borderRadius: BorderRadius.circular(20.r),
      onTap: () {}, // ممكن لاحقاً تحطي هنا حدث الاختيار
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: EdgeInsets.symmetric(vertical: isActive ? 0.h : 20.h),
        height: isActive ? 480.h : 450.h, // ✅ زودنا المساحة شوية
        width: 275.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: isActive
                ? [AppColors.primaryColor, AppColors.secondaryColor]
                : [AppColors.purpleColor, AppColors.purpleEndColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            if (isActive)
              BoxShadow(
                color: AppColors.purpleColor.withValues(alpha: 0.25),
                blurRadius: 15,
                spreadRadius: 2,
                offset: const Offset(0, 8),
              ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(20.w),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: isActive ? 294.h : 230.h,
                  child: Image.asset(
                    goals[index]["image"]!,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 30.h),

                Text(
                  goals[index]["title"]!,
                  textAlign: TextAlign.center,
                  style: AppStyles.bold16WhiteText.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
                Container(
                  height: 1.h,
                  width: 70.w,
                  margin: EdgeInsets.only(top: 10.h,bottom: 24.h),
                  color: Colors.white,
                ),
                Text(
                  goals[index]["desc"]!,
                  textAlign: TextAlign.center,
                  style: AppStyles.regular12GrayText.copyWith(
                    color: Colors.white,
                    height: 1.8,
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

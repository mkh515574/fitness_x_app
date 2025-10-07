import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_routes.dart';

class AnimatedNextButton extends StatelessWidget {
  final PageController pageController;
  final int currentIndex;
  final int totalPages;

  const AnimatedNextButton({
    super.key,
    required this.pageController,
    required this.currentIndex,
    required this.totalPages,
  });

  @override
  Widget build(BuildContext context) {
    double progress = (currentIndex + 1) / totalPages;

    return GestureDetector(
      onTap: () {
        if (currentIndex < totalPages - 1) {
          pageController.nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        } else {

               Navigator.pushReplacementNamed(context, AppRoutes.startScreen);
      
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 82.w,
            height: 82.w,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 2.8,
              backgroundColor: AppColors.secondaryColor.withValues(alpha: 0.2),
              valueColor: AlwaysStoppedAnimation(
                AppColors.secondaryColor,
              ),
            ),
          ),

          Container(
            width: 70.w,
            height: 70.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  AppColors.primaryColor,
                  AppColors.secondaryColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.whiteColor,
              size: 25.w,
            ),
          ),
        ],
      ),
    );
  }
}

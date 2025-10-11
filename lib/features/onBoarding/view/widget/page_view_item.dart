
import 'package:fitness_x_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model/on_boarding_model.dart';

class PageViewItem extends StatelessWidget {
  final OnBoardingModel model;
  final int currentIndex;
  final PageController? pageController;

  const PageViewItem({super.key, required this.model, this.pageController, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          model.imagePath,
          height: 406.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),

        SizedBox(height: 40.h),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  model.title,
                  style: AppStyles.bold24BlackText,
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 16.h),
                Text(
                  model.description,
                  style: AppStyles.regular14GrayText,
                  textAlign: TextAlign.start,
                ),


              ],
            ),
          ),

      ],
    );
  }
}

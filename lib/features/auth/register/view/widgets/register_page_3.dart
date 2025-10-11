import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_x_app/core/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import 'item_slider_view.dart';

class RegisterPage3 extends StatefulWidget {
  const RegisterPage3({super.key});

  @override
  State<RegisterPage3> createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),

            Text("What is your goal ?", style: AppStyles.bold20BlackText),
            SizedBox(height: 10.h),
            Text(
              "It will help us to choose a best\n program for you",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: AppStyles.regular12GrayText.copyWith(fontSize: 12),
            ),
            SizedBox(height: 30.h),

            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) =>
                  ItemSliderView(index: index, currentPage: _currentIndex),
              options: CarouselOptions(
                height: 478.h,
                aspectRatio: 16 / 9,
                viewportFraction: 0.77,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: false,
                enlargeCenterPage: true,
                enlargeFactor: 0.2,
                scrollDirection: Axis.horizontal,

                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),

            SizedBox(height: 60.h),

            CustomElevatedButton(onPressed: () {

              Navigator.pushReplacementNamed(context, AppRoutes.welcome);
            }, text: "Confirm"),
          ],
        ),
      ),
    );
  }
}

import 'package:fitness_x_app/features/onBording/view/widget/gradient_next_button.dart';
import 'package:flutter/material.dart';
import 'package:fitness_x_app/core/utils/app_assets.dart';
import 'package:fitness_x_app/features/onBording/view/widget/page_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../model/on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
      imagePath: AppAssets.onBoarding,
      title: "Track Your Goal",
      description:
      "Don't worry if you have trouble determining your goals, we can help you determine and track them.",
    ),
    OnBoardingModel(
      imagePath: AppAssets.onBoarding1,
      title: "Get Burn",
      description:
      "Let’s keep burning to achieve your goals. It hurts temporarily, but quitting hurts forever.",
    ),
    OnBoardingModel(
      imagePath: AppAssets.onBoarding2,
      title: "Eat Well",
      description:
      "Let's start a healthy lifestyle with us — we’ll help you plan your meals. Healthy eating can be fun!",
    ),
    OnBoardingModel(
      imagePath: AppAssets.onBoarding3,
      title: "Improve Sleep Quality",
      description:
      "Improve your sleep quality with us. Good sleep leads to good mornings and a better mood.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onBoardingList.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return PageViewItem(
                  model: onBoardingList[index],
                  pageController: _pageController,
                  currentIndex: index,
                );
              },
            ),
          ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.w,vertical: 50.h),
            alignment: Alignment.bottomRight,
            child: AnimatedNextButton(
              pageController: _pageController,
              currentIndex: currentIndex,
              totalPages: onBoardingList.length,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

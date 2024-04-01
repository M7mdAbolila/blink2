import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/onboarding_bottom_section.dart';
import 'widgets/onboarding_page_one.dart';
import 'widgets/onboarding_page_three.dart';
import 'widgets/onboarding_page_two.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final pageController = PageController();
  bool isLastScreen = false;
  bool isFirstScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 170.h),
            child: PageView(
              controller: pageController,
              children: const [
                OnboardingPageOne(),
                OnboardingPageTwo(),
                OnboardingPageThree(),
              ],
              onPageChanged: (page) {
                setState(() {
                  isLastScreen = (page == 2);
                  isFirstScreen = (page == 0);
                });
              },
            ),
          ),
          // Container(
          //   alignment: const Alignment(0, 0.90),
          //   child: OnboardingBottomSection(
          //     pageController: pageController,
          //     isLastScreen: isLastScreen,
          //     isFirstScreen: isFirstScreen,
          //   ),
          // ),
        ],
      ),
      bottomSheet: OnboardingBottomSection(
        pageController: pageController,
        isLastScreen: isLastScreen,
        isFirstScreen: isFirstScreen,
      ),
    );
  }
}

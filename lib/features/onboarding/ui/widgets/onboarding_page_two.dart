import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helpers/spacing.dart';
import 'onboarding_app_logo.dart';

class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const OnboradingAppLogo(),
          verticalSpace(60),
          Image.asset(
            'assets/images/onboarding_page_two.png',
            width: 230,
          ),
          verticalSpace(70),
          SvgPicture.asset('assets/svgs/onboarding_create.svg'),
          verticalSpace(60),
          Image.asset('assets/images/onboarding_create_text.png'),
        ],
      ),
    );
  }
}

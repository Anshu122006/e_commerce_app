import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class COnboardingDotNavigator extends StatelessWidget {
  const COnboardingDotNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = OnboardingController.instance;
    final bool isDark = CDeviceHelper.isDarkMode(context);

    return SmoothPageIndicator(
      controller: controller.pageController,
      onDotClicked: controller.dotNavigationClick,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: isDark ? CColors.white : CColors.black,
        radius: CThickness.normal / 2,
        dotHeight: CThickness.normal,
      ),
    );
  }
}

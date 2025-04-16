import 'package:e_commerce_app/features/authentication/controllers/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/next_page_button.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/widgets/skip_button.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              COnboardingPage(
                image: CImages.onboardingImage1,
                title: CTexts.onboardingTitle1,
                subtitle: CTexts.onboardingSubtitle1,
              ),
              COnboardingPage(
                image: CImages.onboardingImage2,
                title: CTexts.onboardingTitle2,
                subtitle: CTexts.onboardingSubtitle2,
              ),
              COnboardingPage(
                image: CImages.onboardingImage3,
                title: CTexts.onboardingTitle3,
                subtitle: CTexts.onboardingSubtitle3,
              ),
            ],
          ),
          Positioned(
            top: CSizes.l,
            right: CSizes.sm,
            child: COnboardingSkipButton(),
          ),
          Positioned(
            bottom: CSizes.l,
            left: CSizes.md,
            child: COnboardingDotNavigator(),
          ),
          Positioned(
            bottom: CSizes.md,
            right: CSizes.sm,
            child: COnboardingNextButton(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/onboarding_controller.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:t_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/texts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                imageUrl: AppImages.OnBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subtitle: AppTexts.onBoardingSubtitle1,
              ),
              OnBoardingPage(
                imageUrl: AppImages.OnBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subtitle: AppTexts.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                imageUrl: AppImages.OnBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subtitle: AppTexts.onBoardingSubtitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

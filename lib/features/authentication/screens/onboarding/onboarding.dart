import 'package:e_com/features/authentication/controllers/onboarding/onboarding.controller.dart';

import 'package:e_com/features/authentication/screens/onboarding/widgets/onboarding.page.dart';
import 'package:e_com/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_com/utils/constants/colors.dart';
import 'package:e_com/utils/constants/image_strings.dart';
import 'package:e_com/utils/constants/sizes.dart';

import 'package:e_com/utils/constants/text_strings.dart';
import 'package:e_com/utils/device/device_utility.dart';
import 'package:e_com/utils/helpers/helper_functions.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          // skip button
          const OnBoardingSkip(),
          // DotNavigation smoothPageIndicator

          const OnBoardingDotNavigation(),

          // Circular Button
          // other parts extracted to a widget class . I left this to understand
          Positioned(
              right: TSizes.defaultSpace,
              bottom: TDeviceUtils.getBottomNavigationBarHeight(),
              child: ElevatedButton(
                onPressed: () => OnBoardingController.instance.nextPage(),
                style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                child: const Icon(Iconsax.arrow_right_3),
              ))
        ],
      ),
    );
  }
}

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: TSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.light : TColors.dark, dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
      ),
    );
  }
}
//other classes copied into seperate files on widgets
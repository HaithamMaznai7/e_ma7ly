import 'package:e_ma7ly/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_ma7ly/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_ma7ly/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_ma7ly/util/constants/colors.dart';
import 'package:e_ma7ly/util/constants/image_strings.dart';
import 'package:e_ma7ly/util/constants/sizes.dart';
import 'package:e_ma7ly/util/constants/text_strings.dart';
import 'package:e_ma7ly/util/device/device_utility.dart';
import 'package:e_ma7ly/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget{
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
            children: const [
              OnBoardingPage(
                image: EImages.onBoardingImage1,
                title: ETexts.onBoardingTitle1,
                subTitle: ETexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage2,
                title: ETexts.onBoardingTitle2,
                subTitle: ETexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImages.onBoardingImage3,
                title: ETexts.onBoardingTitle3,
                subTitle: ETexts.onBoardingSubTitle3,
              ),
            ],
          ),

          const OnBoardingSkip(),

          const OnBoarderDotNavigation(),

          const OnBoardingNextBtn()
        ],
      ),
    );
  }
}

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Positioned(
      right: ESizes.defaultSpace,
      bottom: EDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? EColors.primaryColor : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}

class OnBoarderDotNavigation extends StatelessWidget {
  const OnBoarderDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = EHelperFunctions.isDarkMode(context);


    return Positioned(
      bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: ESizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigatorClick,
        effect: ExpandingDotsEffect(activeDotColor: dark ? EColors.light : EColors.dark , dotHeight: 6),
      ),
    );
  }
}
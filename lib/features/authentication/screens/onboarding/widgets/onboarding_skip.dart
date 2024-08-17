import 'package:e_ma7ly/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_ma7ly/util/constants/sizes.dart';
import 'package:e_ma7ly/util/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EDeviceUtils.getAppBarHeight(),
        right: ESizes.defaultSpace,
        child: TextButton(
          onPressed: () => OnBoardingController.instance.skipPage(),
          child: const Text('skip'),
        )
    );
  }
}
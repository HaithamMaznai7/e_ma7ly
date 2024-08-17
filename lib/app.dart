import 'package:e_ma7ly/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:e_ma7ly/util/theme/theme.dart';
import 'package:get/get.dart';

/// --- Use this class to setup themes, initial Bindings, any animations and much

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: EAppTheme.lightTheme,
      darkTheme: EAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
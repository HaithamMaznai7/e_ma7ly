import 'package:e_ma7ly/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Update Current Index when Page Scroll
  void dotNavigatorClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Update Current Index when Page Scroll
  void nextPage() {
    if(currentPageIndex.value == 2){
       Get.to(const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Update Current Index when Page Scroll
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
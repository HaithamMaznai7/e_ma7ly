import 'package:get/get.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  // visible
  Rx<bool> isPasswordVisible = true.obs;
  void passwordVisibleChange(){
    isPasswordVisible.value = isPasswordVisible.value ? false : true;
  }
}
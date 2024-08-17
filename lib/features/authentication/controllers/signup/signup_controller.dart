import 'package:get/get.dart';

class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  // visible
  Rx<bool> isPasswordVisible = true.obs;
  void passwordVisibleChange(){
    isPasswordVisible.value = isPasswordVisible.value ? false : true;
  }
}
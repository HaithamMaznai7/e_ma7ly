import 'package:e_ma7ly/features/authentication/controllers/login/login_controller.dart';
import 'package:e_ma7ly/util/constants/sizes.dart';
import 'package:e_ma7ly/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ELoginForm extends StatelessWidget {
  const ELoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: ETexts.email
              ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields,),
            Obx(() =>
                TextFormField(
                  obscureText: controller.isPasswordVisible.value,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    labelText: ETexts.password,
                    suffixIcon: IconButton(icon: Icon( controller.isPasswordVisible.value ? Iconsax.eye : Iconsax.eye_slash), onPressed: controller.passwordVisibleChange ,),
                  ),
                ),
            ),
            const SizedBox(height: ESizes.spaceBtwInputFields / 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(ETexts.rememberMe),
                  ],
                ),
                TextButton(onPressed: () {}, child: const Text(ETexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: ESizes.spaceBtwSections,),

            SizedBox(width: double.infinity, child:  ElevatedButton(onPressed: (){}, child: const Text(ETexts.signIn))),
            const SizedBox(height: ESizes.spaceBtwItems,),

            SizedBox(width: double.infinity, child:  OutlinedButton(onPressed: (){}, child: const Text(ETexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
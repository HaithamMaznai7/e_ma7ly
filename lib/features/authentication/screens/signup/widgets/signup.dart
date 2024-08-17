import 'package:e_ma7ly/features/authentication/controllers/signup/signup_controller.dart';
import 'package:e_ma7ly/util/constants/sizes.dart';
import 'package:e_ma7ly/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SignUpController controller = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// Title
              Text(ETexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),


              /// Form
              Form(child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                            labelText: ETexts.firstName.tr,
                            prefixIcon: const Icon(Iconsax.user),
                          ),
                        ),
                      ),
                      const SizedBox(width: ESizes.spaceBtwInputFields,),
                      Expanded(
                        child: TextFormField(
                          expands: false,
                          decoration: InputDecoration(
                            labelText: ETexts.lastName.tr,
                            prefixIcon: const Icon(Iconsax.user),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: ESizes.spaceBtwInputFields,),
                  const SizedBox(height: ESizes.spaceBtwInputFields,),
                  const SizedBox(height: ESizes.spaceBtwInputFields,),
                  const SizedBox(height: ESizes.spaceBtwInputFields,),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: ETexts.userName,
                      prefixIcon: Icon(Iconsax.user_edit)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: ETexts.email,
                      prefixIcon: Icon(Iconsax.direct)
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: ETexts.phoneNumber,
                      prefixIcon: Icon(Iconsax.call)
                    ),
                  ),
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: ETexts.userName,
                      prefixIcon: Icon(Iconsax.user_edit)
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

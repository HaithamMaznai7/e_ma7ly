import 'package:e_ma7ly/common/styles/spacing_style.dart';
import 'package:e_ma7ly/common/widgets/login_signup/form_divider.dart';
import 'package:e_ma7ly/common/widgets/login_signup/social_buttons.dart';
import 'package:e_ma7ly/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_ma7ly/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_ma7ly/util/constants/sizes.dart';
import 'package:e_ma7ly/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ELoginHeader(),

              const ELoginForm(),

              EFormDivider(dividerText: ETexts.orSignInWith.capitalize!),
              const SizedBox(height: ESizes.spaceBtwSections,),

              const ESocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
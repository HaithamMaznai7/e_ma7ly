import 'package:e_ma7ly/util/constants/image_strings.dart';
import 'package:e_ma7ly/util/constants/text_strings.dart';
import 'package:e_ma7ly/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ELoginHeader extends StatelessWidget {
  const ELoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? EImages.darkAppLogo : EImages.lightAppLogo),
        ),
        Text(ETexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
        Text(ETexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,)

      ],
    );
  }
}
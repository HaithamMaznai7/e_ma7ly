import 'package:e_ma7ly/util/constants/colors.dart';
import 'package:e_ma7ly/util/constants/image_strings.dart';
import 'package:e_ma7ly/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class ESocialButtons extends StatelessWidget {
  const ESocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: EColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                height: ESizes.iconMd,
                width: ESizes.iconMd,
                image: AssetImage(EImages.apple)
            ),
          ),
        ),
        const SizedBox(width: ESizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: EColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                height: ESizes.iconMd,
                width: ESizes.iconMd,
                image: AssetImage(EImages.google)
            ),
          ),
        ),
        const SizedBox(width: ESizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: EColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){},
            icon: const Image(
                height: ESizes.iconMd,
                width: ESizes.iconMd,
                image: AssetImage(EImages.facebook)
            ),
          ),
        ),
      ],
    );
  }
}
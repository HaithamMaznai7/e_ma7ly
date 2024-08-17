import 'package:e_ma7ly/util/constants/colors.dart';
import 'package:e_ma7ly/util/theme/custom_themes/appbar_theme.dart';
import 'package:e_ma7ly/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:e_ma7ly/util/theme/custom_themes/checkbox_theme.dart';
import 'package:e_ma7ly/util/theme/custom_themes/chip_theme.dart';
import 'package:e_ma7ly/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:e_ma7ly/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:e_ma7ly/util/theme/custom_themes/text_field_theme.dart';
import 'package:e_ma7ly/util/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EAppTheme{
  EAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: EColors.primaryColor,
    textTheme: ETextTheme.lightTheme ,
    chipTheme: EChipTheme.lightTheme,
    scaffoldBackgroundColor: EColors.white,
    appBarTheme: EAppBarTheme.lightTheme,
    checkboxTheme: ECheckBoxTheme.lightTheme,
    bottomSheetTheme: EBottomSheetTheme.lightTheme,
    elevatedButtonTheme: EElevatedButtonTheme.lightTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.lightTheme,
    inputDecorationTheme: ETextFormFieldTheme.lightTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: EColors.primaryColor,
    textTheme: ETextTheme.darkTheme ,
    chipTheme: EChipTheme.darkTheme,
    scaffoldBackgroundColor: EColors.dark,
    appBarTheme: EAppBarTheme.darkTheme,
    checkboxTheme: ECheckBoxTheme.darkTheme,
    bottomSheetTheme: EBottomSheetTheme.darkTheme,
    elevatedButtonTheme: EElevatedButtonTheme.darkTheme,
    outlinedButtonTheme: EOutlinedButtonTheme.darkTheme,
    inputDecorationTheme: ETextFormFieldTheme.darkTheme,
  );
}
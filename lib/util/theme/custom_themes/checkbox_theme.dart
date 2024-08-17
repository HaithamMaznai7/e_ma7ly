import 'package:e_ma7ly/util/constants/colors.dart';
import 'package:flutter/material.dart';

class ECheckBoxTheme{
  ECheckBoxTheme._();

  static CheckboxThemeData lightTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return EColors.primaryColor;
      }else{
        return Colors.transparent;
      }
    }),
  );
  static CheckboxThemeData darkTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return EColors.primaryColor;
      }else{
        return Colors.transparent;
      }
    }),
  );
}
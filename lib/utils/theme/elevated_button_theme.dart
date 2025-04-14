import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/font_data.dart';
import 'package:flutter/material.dart';

class CElevatedButtonTheme {
  CElevatedButtonTheme._();

  static ElevatedButtonThemeData lightElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: CColors.primaryColor,
          foregroundColor: CColors.white,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: TextStyle(
            fontSize: CFontSizes.bodyLarge,
            fontWeight: CFontWeights.bold,
          ),
        ),
      );

  static ElevatedButtonThemeData darkElevatedButtonTheme =
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: CColors.primaryColor,
          foregroundColor: CColors.white,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          textStyle: TextStyle(
            fontSize: CFontSizes.bodyLarge,
            fontWeight: CFontWeights.bold,
          ),
        ),
      );
}

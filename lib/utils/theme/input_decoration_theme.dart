import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/font_data.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CInputDecorationTheme {
  CInputDecorationTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: CColors.darkGrey,
    suffixIconColor: CColors.darkGrey,
    filled: false,

    fillColor: CColors.transparent,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: CColors.darkGrey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(
        color: CColors.darkGrey,
        width: CBorderWidths.thin,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(
        color: CColors.darkGrey,
        width: CBorderWidths.thick,
      ),
    ),
    hintStyle: TextStyle(
      color: CColors.grey,
      fontWeight: CFontWeights.thin,
      fontStyle: FontStyle.italic,
      fontSize: CFontSizes.bodySmall,
    ),
    labelStyle: TextStyle(
      color: CColors.grey,
      fontWeight: CFontWeights.thin,
      fontStyle: FontStyle.italic,
      fontSize: CFontSizes.bodySmall,
    ),
    floatingLabelStyle: TextStyle(
      color: CColors.darkGrey,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontSize: CFontSizes.labelMedium,
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: CColors.darkGrey,
    suffixIconColor: CColors.darkGrey,
    filled: false,

    fillColor: CColors.transparent,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: CColors.darkGrey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: CColors.white, width: CBorderWidths.thin),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: CColors.white, width: CBorderWidths.thick),
    ),
    hintStyle: TextStyle(
      color: CColors.grey,
      fontWeight: CFontWeights.thin,
      fontStyle: FontStyle.italic,
      fontSize: CFontSizes.bodySmall,
    ),
    labelStyle: TextStyle(
      color: CColors.grey,
      fontWeight: CFontWeights.thin,
      fontStyle: FontStyle.italic,
      fontSize: CFontSizes.bodySmall,
    ),
    floatingLabelStyle: TextStyle(
      color: CColors.white,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      fontSize: CFontSizes.labelMedium,
    ),
  );
}

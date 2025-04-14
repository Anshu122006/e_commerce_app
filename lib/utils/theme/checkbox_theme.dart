import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CCheckboxTheme {
  CCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    side: BorderSide(color: CColors.grey, width: CBorderWidths.normal),
    materialTapTargetSize: MaterialTapTargetSize.padded,
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return CColors.checkboxFillColor;
      }
      return CColors.transparent;
    }),
    checkColor: WidgetStateProperty.resolveWith((states) {
      return CColors.white;
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    side: BorderSide(color: CColors.grey, width: CBorderWidths.normal),
    materialTapTargetSize: MaterialTapTargetSize.padded,
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return CColors.checkboxFillColor;
      }
      return CColors.transparent;
    }),
    checkColor: WidgetStateProperty.resolveWith((states) {
      return CColors.white;
    }),
  );
}

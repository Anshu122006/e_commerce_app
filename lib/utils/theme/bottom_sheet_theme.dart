import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:flutter/material.dart';

class CBottomSheetTheme {
  CBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: CColors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    elevation: 5,
    modalBackgroundColor: CColors.white,
  );

  static BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: CColors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    elevation: 5,
    modalBackgroundColor: CColors.black,
  );
}

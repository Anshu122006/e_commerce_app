import 'package:e_commerce_app/utils/theme/appbar_theme.dart';
import 'package:e_commerce_app/utils/theme/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utils/theme/checkbox_theme.dart';
import 'package:e_commerce_app/utils/theme/choice_chip_theme.dart';
import 'package:e_commerce_app/utils/theme/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/input_decoration_theme.dart';
import 'package:e_commerce_app/utils/theme/outlined_button_theme.dart';
import 'package:e_commerce_app/utils/theme/tabbar_theme.dart';
import 'package:e_commerce_app/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';

class CAppTheme {
  CAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Robot",
    brightness: Brightness.light,
    primaryColor: Colors.pink.shade300,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CAppbarTheme.lightAppBarTheme,
    textTheme: CTextTheme.lightTextTheme,
    checkboxTheme: CCheckboxTheme.lightCheckboxTheme,
    elevatedButtonTheme: CElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.lightOutlinedButtonThemeData,
    inputDecorationTheme: CInputDecorationTheme.lightInputDecorationTheme,
    bottomSheetTheme: CBottomSheetTheme.lightBottomSheetThemeData,
    tabBarTheme: CTabbarTheme.lightTabbarTheme,
    chipTheme: CChoiceChipTheme.lightChoiceChipTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Robot",
    brightness: Brightness.dark,
    primaryColor: Colors.pink,
    scaffoldBackgroundColor: Colors.grey.shade900,
    appBarTheme: CAppbarTheme.darkAppBarTheme,
    textTheme: CTextTheme.darkTextTheme,
    checkboxTheme: CCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: CElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: COutlinedButtonTheme.darkOutlinedButtonThemeData,
    inputDecorationTheme: CInputDecorationTheme.darkInputDecorationTheme,
    bottomSheetTheme: CBottomSheetTheme.darkBottomSheetThemeData,
    tabBarTheme: CTabbarTheme.darkTabbarTheme,
    chipTheme: CChoiceChipTheme.darkChoiceChipTheme,
  );
}

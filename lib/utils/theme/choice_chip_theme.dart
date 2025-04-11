import 'package:flutter/material.dart';

class CChoiceChipTheme {
  CChoiceChipTheme._();

  static ChipThemeData lightChoiceChipTheme = ChipThemeData(
    selectedColor: Colors.pink,
    secondarySelectedColor: Colors.pink,
    backgroundColor: Colors.transparent,
    disabledColor: Colors.grey.shade200.withAlpha(100),
    padding: const EdgeInsets.all(6),
    labelStyle: const TextStyle(color: Colors.black),
    secondaryLabelStyle: const TextStyle(color: Colors.black),
    checkmarkColor: Colors.white,
    brightness: Brightness.light,
  );

  static ChipThemeData darkChoiceChipTheme = ChipThemeData(
    selectedColor: Colors.pink,
    secondarySelectedColor: Colors.pink,
    backgroundColor: Colors.transparent,
    disabledColor: Colors.grey.shade200.withAlpha(100),
    padding: const EdgeInsets.all(6),
    labelStyle: const TextStyle(color: Colors.white),
    checkmarkColor: Colors.white,
    brightness: Brightness.dark,
  );
}

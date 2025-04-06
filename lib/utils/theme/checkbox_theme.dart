import 'package:flutter/material.dart';

class CCheckboxTheme {
  CCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    side: BorderSide(color: Colors.pink.shade700, width: 1),
    materialTapTargetSize: MaterialTapTargetSize.padded,
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.pink.shade600;
      }
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.resolveWith((states) {
      return Colors.black;
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    side: BorderSide(color: Colors.pink.shade500, width: 2),
    materialTapTargetSize: MaterialTapTargetSize.padded,
    fillColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.pink.shade600;
      }
      return Colors.transparent;
    }),
    checkColor: WidgetStateProperty.resolveWith((states) {
      return Colors.white;
    }),
  );
}

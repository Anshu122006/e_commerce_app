import 'package:flutter/material.dart';

class CBottomSheetTheme {
  CBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: Colors.pink.shade50,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    elevation: 5,
    modalBackgroundColor: Colors.pink.shade50,
  );

  static BottomSheetThemeData darkBottomSheetThemeData = BottomSheetThemeData(
    backgroundColor: Colors.pink.shade50,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    elevation: 5,
    modalBackgroundColor: Colors.pink.shade50,
  );
}

import 'package:flutter/material.dart';

class COutlinedButtonTheme {
  COutlinedButtonTheme._();

  static OutlinedButtonThemeData lightOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.pink.shade700, // Text color
      side: BorderSide(color: Colors.pink.shade700, width: 2), // Border color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Smooth corners
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14), // Comfortable spacing
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600, // Semi-bold text
      ),
    ),
  );

  static OutlinedButtonThemeData darkOutlinedButtonThemeData = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.pink.shade700, // Text color
      side: BorderSide(color: Colors.pink.shade700, width: 2), // Border color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Smooth corners
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14), // Comfortable spacing
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600, // Semi-bold text
      ),
    ),
  );
}

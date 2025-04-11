import 'package:flutter/material.dart';

class CInputDecorationTheme {
  CInputDecorationTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey.shade700,
    suffixIconColor: Colors.grey.shade700,
    filled: true,

    fillColor: Colors.pink.shade50,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.pink.shade300),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.pink.shade400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.pink.shade500, width: 2),
    ),
    hintStyle: TextStyle(color: Colors.pink.shade500, fontStyle: FontStyle.italic),
    labelStyle: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      fontSize: 16,
    ),
    floatingLabelStyle: TextStyle(
      color: Colors.pink.shade500,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      fontSize: 16,
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey.shade700,
    suffixIconColor: Colors.grey.shade700,
    filled: true,
    fillColor: Colors.pink.shade50,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.pink.shade300),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.pink.shade400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.pink.shade500, width: 2),
    ),
    hintStyle: TextStyle(color: Colors.pink.shade500, fontStyle: FontStyle.italic),
    labelStyle: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      fontSize: 16,
    ),
    floatingLabelStyle: TextStyle(
      color: Colors.pink.shade500,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      fontSize: 16,
    ),
  );
}

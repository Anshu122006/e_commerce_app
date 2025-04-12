import 'package:flutter/material.dart';

class CInputDecorationTheme {
  CInputDecorationTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey.shade700,
    suffixIconColor: Colors.grey.shade700,
    filled: false,

    fillColor: Colors.pink.shade50,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.grey.shade700),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.grey.shade700),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(color: Colors.grey.shade800, width: 2),
    ),
    hintStyle: TextStyle(
      color: Colors.grey.shade600,
      fontStyle: FontStyle.italic,
      fontSize: 22,
    ),
    labelStyle: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      fontSize: 16,
    ),
    floatingLabelStyle: TextStyle(
      color: Colors.grey.shade600,
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
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade500, width: 2),
    ),
    hintStyle: TextStyle(
      color: Colors.grey.shade200,
      fontStyle: FontStyle.italic,
      fontSize: 22,
    ),
    labelStyle: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      fontSize: 16,
    ),
    floatingLabelStyle: TextStyle(
      color: Colors.grey.shade200,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      fontSize: 16,
    ),
  );
}

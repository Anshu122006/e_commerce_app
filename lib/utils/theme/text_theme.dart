import 'package:flutter/material.dart';

class CTextTheme {
  CTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 30,
      color: Colors.black,
      fontWeight: FontWeight.w900,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 26,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),

    titleLarge: TextStyle().copyWith(
      fontSize: 32,
      color: Colors.black,
      fontWeight: FontWeight.w900,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 28,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),

    bodyLarge: TextStyle().copyWith(
      fontSize: 22,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.grey.shade700,
      fontWeight: FontWeight.w300,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      color: Colors.grey.shade500,
      fontWeight: FontWeight.w300,
    ),

    labelLarge: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w300,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      color: Colors.white,
      fontWeight: FontWeight.w900,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),

    titleLarge: TextStyle().copyWith(
      fontSize: 32,
      color: Colors.white,
      fontWeight: FontWeight.w900,
    ),
    titleMedium: TextStyle().copyWith(
      fontSize: 28,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),
    titleSmall: TextStyle().copyWith(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w600,
    ),

    bodyLarge: TextStyle().copyWith(
      fontSize: 22,
      color: Colors.white,
      fontWeight: FontWeight.w300,
    ),
    bodyMedium: TextStyle().copyWith(
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w300,
    ),
    bodySmall: TextStyle().copyWith(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w300,
    ),

    labelLarge: TextStyle().copyWith(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
    labelMedium: TextStyle().copyWith(
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w200,
    ),
  );
}

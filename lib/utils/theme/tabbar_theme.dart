import 'package:flutter/material.dart';

class CTabbarTheme {
  CTabbarTheme._();
  static TabBarTheme lightTabbarTheme = TabBarTheme(
    labelColor: Colors.pinkAccent,
    unselectedLabelColor: Colors.grey.shade600,
    labelStyle: TextStyle(fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(width: 3, color: Colors.pinkAccent),
    ),
    tabAlignment: TabAlignment.start,
    dividerColor: Colors.grey.shade700,
  );

  static TabBarTheme darkTabbarTheme = TabBarTheme(
    labelColor: Colors.white,
    unselectedLabelColor: Colors.grey.shade500,
    labelStyle: TextStyle(fontWeight: FontWeight.w600),
    unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(width: 3, color: Colors.pinkAccent),
    ),
    tabAlignment: TabAlignment.start,
    dividerColor: Colors.grey.shade500,
  );
}

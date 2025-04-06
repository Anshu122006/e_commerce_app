import 'package:flutter/material.dart';

class CShadows {
  static final mildShadowLight = BoxShadow(
    blurRadius: 6,
    spreadRadius: 3,
    color: Colors.grey.withAlpha(60),
    offset: Offset(0, 0),
    blurStyle: BlurStyle.normal,
  );

  static final mildShadowDark = BoxShadow(
    blurRadius: 6,
    spreadRadius: 3,
    color: Colors.grey.shade800.withAlpha(60),
    offset: Offset(0, 0),
    blurStyle: BlurStyle.normal,
  );
}

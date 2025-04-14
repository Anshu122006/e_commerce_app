import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/font_data.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';

class CTabbarTheme {
  CTabbarTheme._();
  static TabBarTheme lightTabbarTheme = TabBarTheme(
    labelColor: CColors.primaryColor,
    unselectedLabelColor: CColors.darkGrey,
    labelStyle: TextStyle(fontWeight: CFontWeights.bold),
    unselectedLabelStyle: TextStyle(fontWeight: CFontWeights.normal),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        width: CBorderWidths.thick,
        color: CColors.secondaryColor,
      ),
    ),
    tabAlignment: TabAlignment.start,
    dividerColor: CColors.darkGrey,
  );

  static TabBarTheme darkTabbarTheme = TabBarTheme(
    labelColor: CColors.primaryColor,
    unselectedLabelColor: CColors.lightGrey,
    labelStyle: TextStyle(fontWeight: CFontWeights.bold),
    unselectedLabelStyle: TextStyle(fontWeight: CFontWeights.normal),
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        width: CBorderWidths.thick,
        color: CColors.secondaryColor,
      ),
    ),
    tabAlignment: TabAlignment.start,
    dividerColor: CColors.lightGrey,
  );
}

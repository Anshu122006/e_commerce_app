// ignore_for_file: unused_import

import 'package:e_commerce_app/common/decoration/edges/petal_edge.dart';
import 'package:e_commerce_app/common/decoration/edges/start_edge.dart';
import 'package:e_commerce_app/common/decoration/shapes/flower.dart';
import 'package:e_commerce_app/common/decoration/shapes/star.dart';
import 'package:e_commerce_app/common/screens/notification_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup_screen.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/global/navigation_menu/navigation_menu.dart';
import 'package:e_commerce_app/testing/get_tests/get_api_screen.dart';
import 'package:e_commerce_app/testing/get_tests/navigation_page_one.dart';
import 'package:e_commerce_app/testing/get_tests/reactive_screen.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "e-commerce app",
      themeMode: ThemeMode.system,
      theme: CAppTheme.lightTheme,
      darkTheme: CAppTheme.darkTheme,
      home: NavigationMenu(),
    );
  }
}

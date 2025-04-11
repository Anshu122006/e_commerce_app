import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CDeviceHelper {
  CDeviceHelper._();

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void setStatusbarColor(BuildContext context, Color color) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: color));
  }

  static bool isLandscapeOriented(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;

    return viewInsets.bottom == 0;
  }

  static bool isPotraitOriented(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;

    return viewInsets.bottom != 0;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  static double statusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static bool isPhysicalDevice() {
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static void vibrate() {
    HapticFeedback.vibrate();
    Future.delayed(Duration(seconds: 0), () => HapticFeedback.vibrate());
  }

  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  // static double getAppBarHeight() {
  //   return cToolBarHeight;
  // }

  // static double getKeyboardHeight() {
  //   final viewInsets = MediaQuery.of(Get.context!).viewInsets;
  //   return viewInsets.bottom;
  // }

  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup("example.com");
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
      // ignore: unused_catch_clause
    } on SocketException catch (e) {
      return false;
    }
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw ("can't launnchh $url");
    }
  }
}

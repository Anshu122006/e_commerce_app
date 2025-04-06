import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/features/shop/screens/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenuController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  List<Widget> screens = [
    HomeScreen(),
    StoreScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.deepPurple),
  ];

  void setCurrentPage(int index) {
    selectedIndex.value = index;
  }
}

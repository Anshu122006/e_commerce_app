import 'package:e_commerce_app/testing/get_tests/navigation_page_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestPage1 extends StatelessWidget {
  const TestPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Page1")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(TestPage2());
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

import 'package:e_commerce_app/testing/get_tests/get_api_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestApiScreen extends StatelessWidget {
  const TestApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiController apiService = Get.find();
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: apiService.getResponse(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return Text(snapshot.data!);
            } else {
              return Text("Cant fetch data");
            }
          },
        ),
      ),
    );
  }
}

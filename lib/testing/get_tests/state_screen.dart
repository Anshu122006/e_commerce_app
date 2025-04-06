import 'package:e_commerce_app/testing/get_tests/state_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateScreen extends StatelessWidget {
  const StateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final StateController controller = Get.put(StateController());
    return Scaffold(
      body: Center(child: Obx(() => Text("Count: ${controller.count}"))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.count.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

import 'package:e_commerce_app/testing/get_tests/reactive_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveScreen extends StatefulWidget {
  const ReactiveScreen({super.key});

  @override
  State<ReactiveScreen> createState() => _ReactiveScreenState();
}

class _ReactiveScreenState extends State<ReactiveScreen> {
  // final TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final ReactiveController controller = Get.put(ReactiveController());
    return Scaffold(
      appBar: AppBar(title: Text("Reactive Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("Name: ${controller.name}")),
          TextField(
            onChanged: (value) {
              controller.name.value = value;
            },
          ),
        ],
      ),
    );
  }
}

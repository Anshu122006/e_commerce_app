import 'package:get/get.dart';

class ApiController extends GetxService {
  Future<String> getResponse() async {
    await Future.delayed(Duration(seconds: 2));
    return "This is your response";
  }
}

// GetxSerivice has longet lifespan than Getx.Controller

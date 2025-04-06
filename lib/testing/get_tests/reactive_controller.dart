import 'package:get/get.dart';

class ReactiveController extends GetxController {
  var name = ''.obs;

  void updateName(String newName){
    name.value = newName;
  }
}
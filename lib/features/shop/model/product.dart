import 'package:get/get.dart';

class CProduct {
  Rx<bool> isFav;
  Rx<int> count;

  CProduct(this.isFav, this.count);
}

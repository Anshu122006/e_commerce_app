import 'package:e_commerce_app/features/shop/model/product.dart';
import 'package:get/get.dart';

class ProductListController extends GetxController {
  static ProductListController get instance => Get.find();

  List<CProduct> productList = [];

  void addProduct(bool isFav, int count) {
    return productList.add(CProduct(isFav.obs, count.obs));
  }
}

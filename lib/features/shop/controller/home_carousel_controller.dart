import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class HomeCaroucelController extends GetxController {
  static HomeCaroucelController get instance => Get.find();

  CarouselSliderController carouselController =
      CarouselSliderController();

  Rx<int> selectedIndex = 0.obs;

  setSelectedIndex(index) {
    selectedIndex.value = index;
  }

  setPage(index) {
    selectedIndex.value = index;
    carouselController.jumpToPage(index);
  }
}

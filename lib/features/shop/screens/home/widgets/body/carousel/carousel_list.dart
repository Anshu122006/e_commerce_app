import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/decoration/shapes/rounded_rect.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/features/shop/controller/home_carousel_controller.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CCarouselList extends StatelessWidget {
  const CCarouselList({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCaroucelController controller = Get.put(HomeCaroucelController());
    final List<Widget> imageList = [
      CRoundedImage(width: double.infinity, image: CImages.promo1),
      CRoundedImage(width: double.infinity, image: CImages.promo2),
      CRoundedImage(width: double.infinity, image: CImages.promo3),
      // CRoundedImage(image: CImages.promo4),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Column(
        children: [
          Obx(() {
            // ignore: unused_local_variable
            int dummy = controller.selectedIndex.value;

            return CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                height: 240,
                onPageChanged:
                    (index, reason) => controller.setSelectedIndex(index),
              ),
              carouselController: controller.carouselController,
              items: imageList,
            );
          }),
          const SizedBox(height: 14),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < imageList.length; i++)
                  (controller.selectedIndex.value == i)
                      ? CRoundedRect(color: Colors.grey.shade600, sclae: 1.1)
                      : GestureDetector(
                        onTap: () => controller.setPage(i),
                        child: CRoundedRect(color: Colors.grey.shade400),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

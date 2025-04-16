import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/decoration/shapes/rounded_rect.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/features/shop/controller/home_carousel_controller.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
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
      padding: const EdgeInsets.symmetric(
        horizontal: CPaddings.l,
        vertical: CPaddings.md,
      ),
      child: Column(
        spacing: CSizes.columnSpacingLarge,
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

          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: CSizes.rowSpacingSmall,
              children: [
                for (int i = 0; i < imageList.length; i++)
                  (controller.selectedIndex.value == i)
                      ? CRoundedRect(
                        color: CColors.darkGrey,
                        height: CThickness.normal + 1,
                        radius: (CThickness.normal + 1) * 0.5,
                        width: 70,
                      )
                      : GestureDetector(
                        onTap: () => controller.setPage(i),
                        child: CRoundedRect(
                          color: CColors.grey,
                          height: CThickness.normal,
                          radius: CThickness.normal * 0.5,
                          width: 40,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

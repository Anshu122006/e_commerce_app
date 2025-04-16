import 'package:e_commerce_app/common/decoration/shapes/bottom_inward_curved.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:e_commerce_app/utils/constants/styling/size_values.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CProductDetailHeader extends StatelessWidget {
  const CProductDetailHeader({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return CBottomInwardCurved(
      child: Container(
        color: isDark ? CColors.darkGrey : CColors.lightGrey,
        padding: EdgeInsets.symmetric(horizontal: CPaddings.sm),
        child: Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(CPaddings.l),
                child: Image(
                  image: AssetImage(CImages.shoes),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            CAppBar(
              showBackArrow: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.heart, color: CColors.favoutiteIconColor),
                ),
              ],
            ),

            Positioned(
              bottom: CPaddings.xl,
              left: CPaddings.sm,
              right: CPaddings.sm,
              child: SizedBox(
                height: 70,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder:
                      (context, index) => CRoundedImage(
                        image: CImages.shoes,
                        width: 80,
                        padding: EdgeInsets.all(CPaddings.xxsm),
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        borderColor: Theme.of(context).primaryColor,
                        fit: BoxFit.contain,
                        showBorder: true,
                      ),
                  separatorBuilder:
                      (_, __) => SizedBox(width: CSizes.rowSpacingMid),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

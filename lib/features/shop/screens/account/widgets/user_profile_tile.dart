import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/features/personalisation/screens/user_details/user_details_screen.dart';
import 'package:e_commerce_app/utils/constants/data/image_strings.dart';
import 'package:e_commerce_app/utils/constants/styling/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CUserProfileTile extends StatelessWidget {
  const CUserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FittedBox(
        child: CRoundedImage(
          isCircle: true,
          radius: 30,
          image: CImages.profileIcon,
        ),
      ),
      title: Text(
        "Pandamon",
        style: Theme.of(
          context,
        ).textTheme.labelLarge!.apply(color: CColors.white),
      ),
      subtitle: Text(
        "pandamon2083@gmail.com",
        style: Theme.of(
          context,
        ).textTheme.labelMedium!.apply(color: CColors.white),
      ),
      trailing: IconButton(
        onPressed: () => Get.to(() => UserDetailsScreen()),
        icon: Icon(Iconsax.edit, color: CColors.white),
      ),
    );
  }
}

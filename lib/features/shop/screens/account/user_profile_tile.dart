import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CUserProfileTile extends StatelessWidget {
  const CUserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CRoundedImage(
        height: 50,
        width: 50,
        radius: 50,
        image: CImages.profileIcon,
      ),
      title: Text(
        "Padamon",
        style: Theme.of(
          context,
        ).textTheme.labelLarge!.apply(color: Colors.white),
      ),
      subtitle: Text(
        "pandamon2083@gmail.com",
        style: Theme.of(
          context,
        ).textTheme.labelMedium!.apply(color: Colors.white),
      ),
      trailing: Icon(Iconsax.edit, color: Colors.white),
    );
  }
}

import 'package:e_commerce_app/common/widgets/dividers/text_divider.dart';
import 'package:e_commerce_app/common/widgets/heading.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/features/personalisation/screens/user_details/widgets/options.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        showBackArrow: true,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CRoundedImage(
                image: CImages.profileIcon,
                isCircle: true,
                radius: 40,
              ),
              const SizedBox(height: 14),
              Text(
                "Change profile picture",
                style: Theme.of(context).textTheme.labelLarge,
              ),
              CTextDivider(),

              CHeading(title: "Profile Information"),
              const SizedBox(height: 10),

              CProfileOption(
                optionKey: "Name",
                optionVal: "pandamon264",
                icon: Iconsax.arrow_right_34,
                onPressed: () {},
              ),
              CProfileOption(
                optionKey: "UserName",
                optionVal: "Pandamon",
                icon: Iconsax.arrow_right_34,
                onPressed: () {},
              ),

              CTextDivider(),
              CHeading(title: "Personal Information"),
              const SizedBox(height: 10),

              CProfileOption(
                optionKey: "User-ID",
                optionVal: "528312",
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              CProfileOption(
                optionKey: "E-mail",
                optionVal: "pandamon2083@gmail.com",
                icon: Iconsax.arrow_right_34,
                onPressed: () {},
              ),
              CProfileOption(
                optionKey: "Phone Number",
                optionVal: "91-8976510926",
                icon: Iconsax.arrow_right_34,
                onPressed: () {},
              ),
              CProfileOption(
                optionKey: "Gender",
                optionVal: "Male",
                icon: Iconsax.arrow_right_34,
                onPressed: () {},
              ),
              CProfileOption(
                optionKey: "Date of birth",
                optionVal: "23rd, February 1998",
                icon: Iconsax.arrow_right_34,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

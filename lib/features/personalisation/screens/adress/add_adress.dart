import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CAddAdress extends StatelessWidget {
  const CAddAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        titleText: "Add new Adress",
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Form(
          child: Column(
            spacing: 10,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  filled: false,
                  labelText: "Name",
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.call),
                  filled: false,
                  labelText: "Phone Number",
                ),
              ),

              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building_31),
                        filled: false,
                        labelText: "Street",
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.code),
                        filled: false,
                        labelText: "Postal Code",
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                spacing: 10,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building),
                        filled: false,
                        labelText: "City",
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.activity),
                        filled: false,
                        labelText: "State",
                      ),
                    ),
                  ),
                ],
              ),

              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.global),
                  filled: false,
                  labelText: "Country",
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text("Save")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

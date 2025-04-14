import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/features/personalisation/screens/adress/add_adress.dart';
import 'package:e_commerce_app/features/personalisation/screens/adress/widgets/adress_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CCurrentAdresses extends StatelessWidget {
  const CCurrentAdresses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        titleText: "Adresses",
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            spacing: 10,
            children: [
              CAdressBox(),
              CAdressBox(isSelected: true),
              CAdressBox(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => CAddAdress()),
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, size: 28, color: Colors.white),
      ),
    );
  }
}

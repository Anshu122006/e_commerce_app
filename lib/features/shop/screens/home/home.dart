import 'package:e_commerce_app/common/widgets/preferredsize/primary_header.dart';
import 'package:e_commerce_app/common/widgets/text_fields/searchbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/body.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/carousel/carousel_list.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/header/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/header/list.dart';
import 'package:e_commerce_app/utils/constants/data/text_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CPrimaryHeader(
              child: Column(
                children: [
                  CHomeAppBar(),
                  CSearchbar(labelText: CTexts.searchText),
                  SizedBox(height: 15),
                  CHeaderList(height: 120),
                ],
              ),
            ),
            CCarouselList(),
            const SizedBox(height: 40),
            CHomeBody(),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

import 'package:e_commerce_app/common/widgets/primary_header.dart';
import 'package:e_commerce_app/common/widgets/searchbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/body.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/body/carousel/carousel_list.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/head/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/head/list/list.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
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
                  HomePageAppBar(),
                  CSearchbar(labelText: CTexts.searchText),
                  SizedBox(height: 15),
                  CHeaderList(),
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

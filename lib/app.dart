import 'package:e_commerce_app/screens/home_page/main_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "e-commerce app",
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

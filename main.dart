import 'package:flutter/material.dart';
import 'package:project1/models/coffee_shop.dart';
import 'package:project1/pages/home_page.dart';
import 'package:project1/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: introPage(),
      ),
    );
  }
}

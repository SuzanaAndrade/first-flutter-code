import 'package:flutter/material.dart';
import 'package:miu_lanches/chicken_page.dart';
import 'package:miu_lanches/controllers/liked_dish_controller.dart';
import 'package:miu_lanches/controllers/product_detail_controller.dart';
import 'package:miu_lanches/home_page.dart';
import 'package:miu_lanches/liked_dish_page.dart';
import 'package:miu_lanches/login_page.dart';
import 'package:miu_lanches/product_detail_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ProductDetailController(),
      ),
      ChangeNotifierProvider(
        create: (_) => LikedDishController(),
      ),
    ],
    child: SuApp(),
  ));
}

class SuApp extends StatelessWidget {
  const SuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LikedDishPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shop_app/pages/CartPage.dart';
import 'package:shop_app/pages/HomePage.dart';
import 'package:shop_app/pages/ProductPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage(),
        "productPage": (context) => ProductPage()
        
      },
     
    );
  }
}


import 'package:flutter/material.dart';
import 'package:shop_cart/screens/home.dart';
import 'package:shop_cart/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopCart',
      theme: ThemeData.light(),
      home: ImageSplashScreen(),
    );
  }
}

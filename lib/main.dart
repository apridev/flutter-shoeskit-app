import 'package:flutter/material.dart';
import 'package:shoeskit/home/cart_page.dart';
import 'package:shoeskit/home/favorite_page.dart';
import 'package:shoeskit/home/home_page.dart';
import 'package:shoeskit/home/main_page.dart';
import 'package:shoeskit/home/profile_page.dart';
import 'package:shoeskit/home/search_page.dart';
import 'package:shoeskit/onboarding_data.dart';
import 'package:shoeskit/pages/checkout_page.dart';
import 'package:shoeskit/pages/login_page.dart';
import 'package:shoeskit/pages/onboarding.dart';
import 'package:shoeskit/pages/product_page.dart';
import 'package:shoeskit/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Onboarding(),
        '/login_page':(context) => LoginPage(),
        '/register_page':(context) => RegisterPage(),
        '/home_page':(context) => HomePage(),
        '/search_page':(context) => SearchPage(),
        '/favorite_page':(context) => FavoritePage(),
        '/profile_page':(context) => ProfilePage(),
        '/cart_page':(context) => CartPage(),
        '/main_page':(context) => MainPage(),
        '/product_page':(context) => ProductPage(),
        '/checkout_page':(context) => CheckOutPage(),

      },
    );
  }
}

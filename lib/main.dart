import 'package:flutter/material.dart';
import 'package:shoeskit/onboarding_data.dart';
import 'package:shoeskit/pages/login_page.dart';
import 'package:shoeskit/pages/onboarding.dart';
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
      },
    );
  }
}

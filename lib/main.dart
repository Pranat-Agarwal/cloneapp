import 'package:flutter/material.dart';
import 'page/splash_page.dart';
import 'page/welcome_page.dart';
import 'page/authentication_page.dart';
import 'page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

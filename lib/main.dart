import 'package:flutter/material.dart';
import 'package:travelling_app/screens/homePage.dart';
import 'package:travelling_app/screens/loginPage.dart';
import 'package:travelling_app/screens/navpages/glav_page.dart';
import 'package:travelling_app/screens/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MainPage(),
    );
  }
}


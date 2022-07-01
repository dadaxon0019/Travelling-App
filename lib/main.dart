import 'package:flutter/material.dart';
import 'package:travelling_app/screens/aboutPage.dart';
import 'package:travelling_app/screens/loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Google Maps Demo',
      home: AboutPage(),
    );
  }
}

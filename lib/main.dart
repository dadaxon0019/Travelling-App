import 'package:flutter/material.dart';
import 'package:travelling_app/screens/homePage.dart';
import 'package:travelling_app/widgets/slider.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          WidgetsBinding.instance.focusManager.primaryFocus?.unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

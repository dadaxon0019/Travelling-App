import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24,bottom: 24),
      child: TextField(
        style: TextStyle(color: Colors.white,fontSize: 18),
        decoration: InputDecoration(
          hintText: 'Temukan Liburan Anda',
          hintStyle: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 16,
            color: Color(0xffA5A5A5),
            fontWeight: FontWeight.w300
          ),
            fillColor: Color(0xff263238),
            filled: true,
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Icon(Icons.search,color: Colors.white,),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({Key? key}) : super(key: key);

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.yellow,
        ),
        Container(
          width: 150,
          height: 150,
          color: Colors.red,
        )
      ],
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class BigSlider extends StatefulWidget {
  const BigSlider({Key? key}) : super(key: key);

  @override
  State<BigSlider> createState() => _BigSliderState();
}

class _BigSliderState extends State<BigSlider> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context,int index){
        return Stack(
          children: [
            Container(
              width: 311,
              height: 133,
              child: CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x150",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ],
        );
      },
    );
  }
}

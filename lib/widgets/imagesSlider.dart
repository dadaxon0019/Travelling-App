import 'package:flutter/material.dart';

class ImageSLider extends StatelessWidget {

  final String nameTrip;
  final String description;
  final String imgUrl;

  const ImageSLider({super.key, required this.nameTrip, required this.description, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10)
      ),
      margin: EdgeInsets.only(right: 24,),
      width: 123,
      height: 180,
      child: Stack(
        children: [
          Image(
              image: AssetImage(imgUrl)
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.white.withOpacity(0.0)
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
              )
            ),
          ),
          Positioned(
            left: 8,
            bottom: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameTrip == '' ?  '(Unnamed Trip)' : nameTrip,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize:13,
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                    description == '' ?  '(Пока все что есть!)' : description,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize:11,
                  ),
                ),

              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: (){
              },
            ),
          )
        ],

      ),
    );
  }
}

import 'package:flutter/material.dart';
class ListItem extends StatefulWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _ItemView();
}
class trips{
  final name;
  trips({this.name});
}

class _ItemView extends State<ListItem>{
  bool isFavorite = true;

  final List<String> sliderTitles = ['Popular','new','favorite'];
  bool clickSlider = true;


  @override
  Widget build(BuildContext context) {
    return
       Row(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           GestureDetector(
             onTap: (){
               isFavorite = !isFavorite;
               clickSlider = !clickSlider;
               print(clickSlider);
               setState(() {
               });
             },
             child: Container(
               margin: EdgeInsets.only(right: 10),
               height: 34,
               decoration: BoxDecoration(
                   color: isFavorite ? Color(0xff263238) : Color(0xFF5EDFFF),
                   borderRadius: BorderRadius.circular(10)
               ),
               child: Padding(
                 padding: const EdgeInsets.all(9),
                 child: Text(sliderTitles[0],
                   style: TextStyle(
                       color: isFavorite ? Colors.white : Color(0xff263238),
                       fontSize: 14,

                       letterSpacing: 0.8,
                       fontWeight: FontWeight.w500
                   ),
                 ),
               ),
             ),
           ),
         ],
       );
  }
}
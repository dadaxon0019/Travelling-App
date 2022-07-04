import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  FeaturedCard({Key? key,required this.nameCard,required this.aboutCard,required this.imgCard,required this.raitingCard}) : super(key: key);

  String nameCard;
  String aboutCard;
  String imgCard;
  int raitingCard;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
          ),
          width: double.infinity,
          height: 133,
          child: Image(
            image: AssetImage(imgCard),fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 133,
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
          bottom: 16,
          right: 16,
          left: 16,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      nameCard,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:13,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      aboutCard,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:11,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '$raitingCard',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:17,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(width: 10,),
                    StarChange()
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}




class StarChange extends StatefulWidget {
  const StarChange({Key? key}) : super(key: key);

  @override
  State<StarChange> createState() => _StarChangeState();
}

class _StarChangeState extends State<StarChange> {

bool starIsDone1 = true;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          starIsDone1 = !starIsDone1;
          this.setState(() {
          });
        },
        child:starIsDone1 ? Icon(Icons.star,color: Color(0xffE58F3F),size: 24,):Icon(Icons.star_border_outlined,color: Color(0xffE58F3F),size: 24,)
    );
  }
}

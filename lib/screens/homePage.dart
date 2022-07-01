import 'package:flutter/material.dart';
import 'package:travelling_app/screens/aboutPage.dart';
import 'package:travelling_app/widgets/imagesSlider.dart';
import 'package:travelling_app/widgets/inputWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelling_app/widgets/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> namesTrips = ['Sea Diving','Beach Adventure','Uzbekistan',];
  final List<String> descriptionTrips = ['11 km boat','51 km away','1444km away',];
  final List<String> imgUrl = ['assets/images_slider_1.png','assets/images_slider_2.png','assets/images_slider_1.png'];


  final jsonString = {
    "name": "John Smith",
    "email": "john@example.com"
  };

  bool starIsDone1 = true;
  bool starIsDone2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff031F2B),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Hello. Dadaxon',style: TextStyle(
                                  color: Color(0xffD6D2D2),
                                fontSize: 12,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text('Let’s Travel',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600
                                    ),
                                  )
                              )
                            ],
                          ),
                          Expanded(child: Container()),
                          Image(image: AssetImage('assets/account_img.png')),
                        ],
                      ),
                      InputPage(),
                    ],
                  ),
                ),
               Container(
                 height: 35,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children:[ Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [ ListItem(),
                       ListItem(),ListItem(),
                       ListItem(),ListItem(),
                       ListItem()],
                   ),]
                 ),
               ),
                SizedBox(height: 32,),
                Row(
                  children: [
                    Text(
                      'Popular Experiences',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.6
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Container(
                  height: 178,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: namesTrips.length,
                    itemBuilder: (BuildContext context,int index){
                      return ImageSLider(
                        nameTrip: namesTrips[index],
                        description: descriptionTrips[index],
                        imgUrl:  imgUrl[index],
                      );
                    },
                  ),
                ),
                SizedBox(height: 16,),
                Row(
                  children: [
                    Text(
                      'Featured',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      width: double.infinity,
                      height: 133,
                      child: Image(
                        image: AssetImage('assets/images_slider_4.png'),fit: BoxFit.cover,
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
                                  'Mount Bromo',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:13,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  '5 km away',
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
                                  '4.7',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize:17,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                                SizedBox(width: 10,),
                                InkWell(
                                  onTap: (){
                                      starIsDone1 = !starIsDone1;
                                      this.setState(() {
                                      });
                                  },
                                    child:starIsDone1 ? Icon(Icons.star,color: Color(0xffE58F3F),size: 24,):Icon(Icons.star_border_outlined,color: Color(0xffE58F3F),size: 24,))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16,),
                InkWell(
                  onTap: (){
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => AboutPage(),
                        transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 1500),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        width: double.infinity,
                        height: 133,
                        child: Image(
                          image: AssetImage('assets/images_slider_4.png'),fit: BoxFit.cover,
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
                                    'Mount Bromo',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:13,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    '5 km away',
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
                                    '4.7',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:17,
                                        fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  InkWell(
                                      onTap: (){
                                        starIsDone2 = !starIsDone2;
                                        this.setState(() {
                                        });
                                      },
                                      child:starIsDone2 ? Icon(Icons.star,color: Color(0xffE58F3F),size: 24,):Icon(Icons.star_border_outlined,color: Color(0xffE58F3F),size: 24,))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelling_app/widgets/bigSlider.dart';
import 'package:travelling_app/widgets/imagesSlider.dart';
import 'package:travelling_app/widgets/inputWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelling_app/widgets/slider.dart';
import 'package:cached_network_image/cached_network_image.dart';

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff031F2B),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 84),
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
            BigSlider(),
          ],
        ),
      ),
    );
  }
}

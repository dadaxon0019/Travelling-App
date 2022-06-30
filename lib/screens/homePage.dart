import 'package:flutter/material.dart';
import 'package:travelling_app/widgets/inputWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelling_app/widgets/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff031F2B),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 32,left: 24,right: 24),
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
                      Image(image: AssetImage('assets/account_img.png'))
                    ],
                  ),
                  InputPage(),
                ],
              ),
            ),
          ),
         Container(
           padding: EdgeInsets.only(left: 24),
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
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Row(
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
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelling_app/widgets/inputWidget.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Center(
        child: Center(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 34,horizontal: 32),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hello. Hazar ',style: TextStyle(
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
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travelling_app/json/FeaturedCardInfo.dart';
import 'package:travelling_app/json/Trips.dart';

import 'package:travelling_app/widgets/FeaturedCard.dart';
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
  late bool clickSlider = clickSlider;

  final jsonString = {"name": "John Smith", "email": "john@example.com"};

  bool starIsDone2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff031F2B),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
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
                              Text(
                                'Hello. Dadaxon',
                                style: TextStyle(
                                  color: Color(0xffD6D2D2),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Let’s Travel',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w600),
                                  ))
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
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return ListItem();
                    },
                    itemCount: sliderTitles.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Popular Experiences',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.6),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 178,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: namesTrips.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ImageSLider(
                              nameTrip: namesTrips[index],
                              description: descriptionTrips[index],
                              imgUrl: imgUrl[index],
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            'Featured',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: nameCard.length * 156,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: nameCard.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: FeaturedCard(
                                nameCard: nameCard[index],
                                aboutCard: aboutCard[index],
                                imgCard: imgCard[index],
                                raitingCard: raitingCard[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

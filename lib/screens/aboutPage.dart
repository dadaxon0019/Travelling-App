import 'package:flutter/material.dart';
import 'package:travelling_app/screens/homePage.dart';
import 'package:travelling_app/screens/loginPage.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff263238),
      body: Container(
        padding: EdgeInsets.symmetric(),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 370,
                  child:Image(image: AssetImage('assets/about_img_1.png'),fit: BoxFit.cover,),
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: IconButton(
                    onPressed: (){
                      
                    },
                    icon: Icon(Icons.arrow_back_ios),color: Colors.white,),
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
                                  fontSize:24,
                                  fontWeight: FontWeight.w600
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
                                  fontSize:20,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(width: 10,),
                            InkWell(
                                onTap: (){},
                                child:  Icon(Icons.star,color: Color(0xffE58F3F),size: 28,)
                            )
                ]
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16,horizontal: 31),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image(image: AssetImage('assets/icon1.png')),
                          Text(
                            'Difficulty',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xffD6D2D2)

                            ),
                          ),
                          SizedBox(height: 7,),
                          Text(
                              'Easy',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffffffff)

                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('assets/icon2.png')),
                          Text(
                            'Time Needed',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffD6D2D2)

                            ),
                          ),
                          SizedBox(height: 7,),

                          Text(
                            '30 - 60 min',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffffffff)

                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Image(image: AssetImage('assets/icon3.png')),
                          Text(
                            'Ticket',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffD6D2D2)

                            ),
                          ),
                          SizedBox(height: 7,),

                          Text(
                            '50 K',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xffffffff)

                            ),
                          )
                        ],
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  SizedBox(height: 52,),
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Mount Bromo, is an active volcano and part of the Tengger massif, in East Java, Indonesia. At 2,329 meters it is not the highest peak of the massif, but is the best known... Read More',
                          style: TextStyle(
                            letterSpacing: 0.8,
                            height: 1.7,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffD6D2D2)
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 75,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        clipBehavior: Clip.hardEdge,
                        height: 37,
                        width: 147,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              side: BorderSide(
                                color: Color(0xff5EDFFF).withOpacity(0.6),
                                width: 2,
                              ),
                              primary:Color(0xff031F2B),
                            ),
                            onPressed: (){
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => LoginPage(),
                                  transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                                  transitionDuration: Duration(milliseconds: 1500),
                                ),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/button_icon1.png')),
                                SizedBox(width: 10,),
                                Text(
                                    'Site Map',
                                    style:TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff5EDFFF)
                                    )
                                )
                              ],
                            )
                        ),
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        height: 37,
                        width: 147,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              side: BorderSide(
                                color: Color(0xff031F2B).withOpacity(0.6),
                                width: 2,
                              ),
                              primary:Color(0xff5EDFFF),
                            ),
                            onPressed: (){
                              Navigator.pushReplacement(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (c, a1, a2) => LoginPage(),
                                  transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                                  transitionDuration: Duration(milliseconds: 1500),
                                ),
                              );
                            },
                            child: Text(
                                'Start',
                                style:TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff031F2B)
                                )
                            )
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

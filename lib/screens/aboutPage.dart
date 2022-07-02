import 'package:flutter/material.dart';
import 'package:travelling_app/screens/homePage.dart';
import 'package:travelling_app/screens/loginPage.dart';
import 'package:video_player/video_player.dart';


class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {

 bool videoOn = false;

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
                  child: videoOn ? Image(image: AssetImage('assets/about_img_1.png'),fit: BoxFit.cover,):
                  VideoApp()),
                Padding(
                  padding: const EdgeInsets.only(top: 58.0),
                  child: IconButton(
                    onPressed: (){Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (c, a1, a2) => HomePage(),
                        transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                        transitionDuration: Duration(milliseconds: 1300),
                      ),
                    );
                      
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
                              videoOn = !videoOn;
                              this.setState(() {

                              });
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

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class VideoPlayerState extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://cdn.videvo.net/videvo_files/video/free/2019-03/large_watermarked/181015_Extra_DanangDrone_004_preview.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        body: Container(
          height: 370,
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 40,top: 50),
          child: Center(
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
              backgroundColor: Colors.white.withOpacity(0.15),
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
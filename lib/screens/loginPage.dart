import 'package:flutter/material.dart';
import 'package:travelling_app/screens/homePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff031F2B),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 164,bottom: 24,right: 24,left: 24),
        color: Color(0xff031F2B),
        child: Column(
          children: [
            Image(
                image: AssetImage('assets/LoginImg.png')
            ),
            SizedBox(height: 28,),
            Text(
              'Escape the ordinary life',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.8, color: Colors.white
              ),
            ),
            SizedBox(height: 7,),
            Text(
              'Discover great experiences around you \nand make you live interesting!',
              style: TextStyle(
                  fontSize: 14,
                  height: 1.4,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.8, color: Color(0xffD6D2D2)
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 174,),
            Column(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: 52,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                     primary: Color(0xff5EDFFF),

                    ),
                      onPressed: (){},
                      child: Text(
                          'Get Started',
                          style:TextStyle(
                              fontSize: 14,
                              color: Color(0xff031F2B)
                          )
                      )
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  clipBehavior: Clip.hardEdge,
                  height: 52,
                  width: double.infinity,
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(contex)=> HomePage()));
                      },
                      child: Text(
                          'Get Started',
                          style:TextStyle(
                              fontSize: 14,
                              color: Color(0xff5EDFFF)
                          )
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

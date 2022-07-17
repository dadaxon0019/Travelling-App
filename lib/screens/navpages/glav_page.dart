import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelling_app/screens/homePage.dart';
import 'package:travelling_app/screens/navpages/bar_item_page.dart';
import 'package:travelling_app/screens/navpages/my_page.dart';
import 'package:travelling_app/screens/navpages/search_page.dart';
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState((){
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff263238),
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.3),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:'Home', icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:'Bar', icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:'My', icon: Icon(Icons.person))
        ],
      ),

    );
  }
}

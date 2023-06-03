import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:doctor/Doctor_screens/Dr_Botttom_Navigation_bar/Bottom_navigation_pages/profile.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/Bottom_navigation_pages/calender.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/Bottom_navigation_pages/history_mesg.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/Bottom_navigation_pages/home.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/Bottom_navigation_pages/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigaionHome extends StatefulWidget {
  @override
  _BottomNavigaionHome createState() => _BottomNavigaionHome();
}

class _BottomNavigaionHome extends State<BottomNavigaionHome> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _selectedIndex = index);
          },
          children: <Widget>[
            HomePage(),
            CalenderScreen(),
            HistoryPage(),
            Profile(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() => _selectedIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Home'),
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1EA1DB).withOpacity(0.5)),
              child: Center(
                child: Icon(Icons.home),
              ),
            ),
          ),
          BottomNavyBarItem(
            title: Text('Calender'),
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1EA1DB).withOpacity(0.5)),
              child: Center(
                child: Icon(Icons.calendar_today_outlined),
              ),
            ),
          ),
          BottomNavyBarItem(
            title: Text('History'),
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1EA1DB).withOpacity(0.5)),
              child: Center(
                child: Icon(Icons.history),
              ),
            ),
          ),
          BottomNavyBarItem(
            title: Text('Profile'),
            icon:
            Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1EA1DB).withOpacity(0.5)),
              child: Center(
                child: Icon(Icons.person_pin),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:ui';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/bottom_navigation_bar.dart';
import 'package:doctor/Member_screens/Review_screens_dr/review_screen.dart';
import 'package:doctor/Member_screens/Widgets/btn.dart';
import 'package:doctor/Member_screens/Widgets/container.dart';
import 'package:flutter/material.dart';

class DoctorMainScreen extends StatefulWidget {
  const DoctorMainScreen({Key? key}) : super(key: key);

  @override
  State<DoctorMainScreen> createState() => _DoctorMainScreenState();
}

class _DoctorMainScreenState extends State<DoctorMainScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Text(
                    'Consultation Ended',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Conten(hight: 220, width: 220, img: 'images/doc.png',),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dr. Will James',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 95,
                  ),
                  Buttn(
                    txt: 'Write a review',
                    clr: Color(0xff1EA1DB),
                    txtColor: Colors.white,
                    hight: screenHight / 16,
                    width: screenWidth / 1.3,
                    fnc: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReviewScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Buttn(
                    txt: 'Go to dashboard',
                    clr: Colors.white,
                    txtColor: Color(0xff1EA1DB),
                    hight: screenHight / 16,
                    width: screenWidth / 1.3, fnc: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigaionHome(),
                      ),
                    );
                  },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

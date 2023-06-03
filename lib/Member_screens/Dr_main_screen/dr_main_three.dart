
import 'package:doctor/Member_screens/Review_screens_dr/review_screen_threer.dart';
import 'package:doctor/Member_screens/Widgets/btn.dart';
import 'package:doctor/Member_screens/Widgets/container.dart';
import 'package:flutter/material.dart';

class Dr_detail_three extends StatefulWidget {
  const Dr_detail_three({Key? key}) : super(key: key);

  @override
  State<Dr_detail_three> createState() => _Dr_detail_threeState();
}

class _Dr_detail_threeState extends State<Dr_detail_three> {
  @override
  Widget build(BuildContext context) {
    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: ()async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 180,
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
                Conten(hight: 220, width: 220, img: 'images/doc4.png',),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Dr. Sarah Wells',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 100,
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
                        builder: (context) => Review_Screen_three(),
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
                  width: screenWidth / 1.3, fnc: (){},
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );  }
}

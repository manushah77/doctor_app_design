import 'package:doctor/Member_screens/Widgets/btn.dart';
import 'package:flutter/material.dart';

class DrVideoCalldeail extends StatefulWidget {
  const DrVideoCalldeail({Key? key}) : super(key: key);

  @override
  State<DrVideoCalldeail> createState() => _DrVideoCalldeailState();
}

class _DrVideoCalldeailState extends State<DrVideoCalldeail> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              'Video Call',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Color(0xff1EA1DB),
              ),
            ),
          ),
          backgroundColor: Color(0xff1EA1DB),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/sarah2.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 500,
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Divider(
                    thickness: 3,
                    color: Color(0xff1EA1DB),
                    endIndent: 20,
                    indent: 20,
                  ),
                  SizedBox(
                    height: 10,
                  ),
              Text(
                '12:00 min',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),

                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttn(
                        txt: "Pause",
                        clr: Color(0xff1EA1DB),
                        txtColor: Colors.white,
                        hight: 40,
                        width: 100,
                        fnc: () {},
                      ),  Buttn(
                        txt: "Stop",
                        clr: Colors.white,
                        txtColor: Color(0xff1EA1DB),
                        hight: 40,
                        width: 100,
                        fnc: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
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

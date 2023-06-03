
import 'package:doctor/Doctor_screens/Dr_Botttom_Navigation_bar/profile_screen/dr_appearence_screen.dart';
import 'package:doctor/Doctor_screens/Dr_Botttom_Navigation_bar/profile_screen/dr_notificaion_screen.dart';
import 'package:doctor/Doctor_screens/Dr_Botttom_Navigation_bar/profile_screen/dr_security_scren.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/profile_screen/appearence_screen.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/profile_screen/help_screen.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/profile_screen/invite_screen.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/profile_screen/notificaion_screen.dart';
import 'package:doctor/Member_screens/Botttom_Navigation_bar/profile_screen/security_scren.dart';
import 'package:flutter/material.dart';

class DrProfile extends StatefulWidget {
  const DrProfile({Key? key}) : super(key: key);

  @override
  State<DrProfile> createState() => _DrProfileState();
}

class _DrProfileState extends State<DrProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: Container(
                width: 35,
                decoration: BoxDecoration(
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      image: AssetImage('images/pencil.png'),
                      scale: 3.5,
                    )),
              ),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        child: Image.asset('images/doc.png'),
                      ),
                      Positioned(
                        bottom: 1,
                        left: 52,
                        child: Image.asset(
                          'images/circ.png',
                          scale: 3,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr Will James',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Wiljames@yourdomain.com',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Cardio Specialist,Cleveland,',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),

              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'images/notificaion.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DrNotificationScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,

                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),


              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'images/lock.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Security',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DrSecurityScreens(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,

                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),


              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'images/eye.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Appearance',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DrAppearanceScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,

                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'images/calen.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Set up time for appointment',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {

                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,

                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),

              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff1EA1DB).withOpacity(0.6),
                  ),
                  child: Center(
                    child: Image.asset(
                      'images/pkg.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Consultation Package',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,

                    )),
              ),
              Divider(
                thickness: 2,
                color: Color(0xffD9D9D9),
                endIndent: 25,
                indent: 25,
              ),
              ListTile(
                leading: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffC60707).withOpacity(0.4),
                  ),
                  child: Center(
                    child: Image.asset(
                      'images/logout.png',
                      height: 23,
                      width: 23,
                    ),
                  ),
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff1EA1DB),
                      size: 20,
                    )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

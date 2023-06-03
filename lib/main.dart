import 'package:doctor/Doctor_screens/Dr_Botttom_Navigation_bar/bottom_navigation_bar.dart';
import 'package:doctor/Member_screens/Dr_main_screen/dr_main_screen.dart';
import 'package:doctor/pin_put.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PinPutScreen(),
    );
  }
}


import 'package:doctor/Member_screens/Dr_detail/dr_detail.dart';
import 'package:doctor/Member_screens/Widgets/btn.dart';
import 'package:flutter/material.dart';

import '../Widgets/container.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {

  bool value = false;
  bool isCheckedtwo = false;


  @override
  Widget build(BuildContext context) {
    var screenHight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;



    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              'Write a Review',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700, fontSize: 17),
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              color: Color(0xff1EA1DB),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Conten(hight: 120, width: 120, img: 'images/doc.png'),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'How was your experience with',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      'Dr. Wills James',
                      style: TextStyle(
                        color: Color(0xff1EA1DB),
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.star_outline,
                          color: Color(0xff1EA1DB),
                          size: 30,
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Write a Comment',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Max 250 words',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: screenHight / 6,
                  width: screenWidth / 1.2,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffD9D9D9),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    maxLines: 7,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15,top: 10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'would you like to introduce \nDr. Sarah Wells to your friends',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        value: value,
                        onChanged: (NewValue) {
                          setState(() {
                             this.value = NewValue!;
                          });
                        },
                      ),
                      Text(
                        'Yes',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        value: isCheckedtwo,
                        onChanged: (bool? value) {
                          setState(() {
                            this.isCheckedtwo = value!;
                          });
                        },
                      ),
                      Text(
                        'No',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Buttn(
                  txt: 'Submit Review',
                  clr: Color(0xff1EA1DB).withOpacity(0.7),
                   txtColor: Colors.white,
                  hight: screenHight / 15,
                  width: screenWidth / 1.3,
                  fnc: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dr_detail(),
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
    );
  }

}

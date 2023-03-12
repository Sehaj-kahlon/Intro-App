import 'dart:ui';

import 'package:flutter/material.dart';
import 'Options/Options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  //makin a widget for the circle avatar
  Widget buildLogo() {
    return CircleAvatar(
      backgroundColor: Colors.lightBlueAccent,
      radius: 75,
      // radius: MediaQuery.of(context).size.width * 0.0,
      backgroundImage: AssetImage('images/dummy2.jpg'),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0XFF2884B8),
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
              child: Container(color: Colors.transparent),
            ),
          ),
          toolbarHeight: 80,
          elevation: 2,
          title: const Text(
            "LinkTree",
            style: TextStyle(
                letterSpacing: 0.2,
                fontFamily: 'Roboto-BoldItalic',
                color: Colors.black,
                fontSize: 46,
                fontWeight: FontWeight.w400),
          ),
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xFFB4CBF0),
                Color(0xFF718EDD),
              ],
              stops: [
                0.3,
                1,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(children: [
                Flexible(child: Container(), flex: 0),
                buildLogo(),
                SizedBox(height: 10),
                Text("Sehaj Kahlon",
                    style: TextStyle(
                        fontFamily: 'Roboto-Black',
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.3)),
                Text(
                    "Bachelor of Electrical Engineering Student at Punjab Engineering College, Chandigarh",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                SizedBox(height: 15),
                RawScrollbar(
                  thumbColor: Color(0XFF2884B8),
                  radius: Radius.circular(20),
                  thickness: 4,
                  child: options(),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

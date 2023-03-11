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
          backgroundColor: Color.fromARGB(255, 223, 94, 145),
          flexibleSpace: ClipRect(
            // padding: const EdgeInsets.only(top: 20, left: 32, right: 32),
            // width: double.infinity,
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
                fontFamily: 'Roboto-Black',
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
                Color(0xFFB880E0),
                Color(0xFFF385A4),
                Color.fromARGB(247, 223, 128, 109),
              ],
              stops: [
                0.3,
                0.6,
                1,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
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
                // SizedBox(height: 5),
                Text(
                    "Bachelor of Electrical Engineering Student at Punjab Engineering College, Chandigarh",
                    style: TextStyle(
                      fontSize: 16,
                    )),
                SizedBox(height: 15),
                Scrollbar(
                  child: options(),
                  thickness: 4,
                )
              ]),
            ),
          ),
        ),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       CircleAvatar(
        //         radius: 50.0,
        //         backgroundColor: Colors.green,
        //         backgroundImage: AssetImage('images/dummy2.JPG'),
        //       ),
        //       Text(
        //         'Sehaj Kahlon',
        //         style: TextStyle(
        //             fontFamily: 'Roboto-Italic',
        //             fontSize: 60.0,
        //             fontWeight: FontWeight.bold,
        //             letterSpacing: 2.0,
        //             color: Colors.white),
        //       ),
        //       Text(
        //         'Student',
        //         style: TextStyle(
        //           fontSize: 20.0,
        //           color: Colors.white,
        //           fontWeight: FontWeight.bold,
        //           letterSpacing: 2.0,
        //         ),
        //       ),
        //       Card(
        //         color: Colors.white,
        //         margin: EdgeInsets.symmetric(
        //           horizontal: 25.0,
        //           vertical: 10.0,
        //         ),
        //         child: ListTile(
        //           leading: Icon(
        //             Icons.phone,
        //             color: Colors.lightBlueAccent,
        //           ),
        //           title: Text(
        //             '+91 XXXXXXXXXX',
        //             style: TextStyle(
        //               color: Colors.lightBlueAccent,
        //               fontWeight: FontWeight.bold,
        //               letterSpacing: 1.0,
        //               fontSize: 20.0,
        //             ),
        //           ),
        //         ),
        //       ),
        //       Card(
        //         color: Colors.white,
        //         margin: EdgeInsets.symmetric(
        //           horizontal: 25.0,
        //           vertical: 10.0,
        //         ),
        //         child: ListTile(
        //           leading: Icon(Icons.email, color: Colors.lightBlueAccent),
        //           title: Text('Sehajkahlon437@gmail.com',
        //               style: TextStyle(
        //                 color: Colors.lightBlueAccent,
        //                 fontWeight: FontWeight.bold,
        //                 letterSpacing: 1.0,
        //                 fontSize: 20.0,
        //               )),
        //         ),
        //       ),
        //       Card(
        //         color: Colors.white,
        //         margin: EdgeInsets.symmetric(
        //           horizontal: 25.0,
        //           vertical: 10.0,
        //         ),
        //         child: ListTile(
        //           leading: Icon(Icons.message, color: Colors.lightBlueAccent),
        //           // subtitle: Text('Check for subtitle'),
        //           title: Text('Linkedin',
        //               style: TextStyle(
        //                 color: Colors.lightBlueAccent,
        //                 fontWeight: FontWeight.bold,
        //                 letterSpacing: 1.0,
        //                 fontSize: 20.0,
        //               )),
        //           onTap: () {},
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

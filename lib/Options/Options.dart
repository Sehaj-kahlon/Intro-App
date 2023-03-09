import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import '../responsive.dart';

class options extends StatelessWidget {
  const options({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        width: Responsive.isSmallScreen(context) ? width : width / 2,
        height: 450,
        
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Flexible(child: Container(), flex: 0),
            
            ElevatedButton(
              onPressed: () async {},
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 25,
                    ),
                    Text('+91 9876217785', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0.0,
                // backgroundColor: Colors.blue,
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {},
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline_sharp,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('sehajkahlon437@gmail.com',
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0.0,
                // backgroundColor: Colors.blue,
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {},
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.no_accounts,
                      size: 25,
                    ),
                    Text('+91 9876217785', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0.0,
                // backgroundColor: Colors.blue,
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {},
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 25,
                    ),
                    Text('+91 9876217785', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0.0,
                // backgroundColor: Colors.blue,
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {},
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 25,
                    ),
                    Text('+91 9876217785', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0.0,
                // backgroundColor: Colors.blue,
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {},
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phone,
                      size: 25,
                    ),
                    Text('+91 9876217785', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0.0,
                // backgroundColor: Colors.blue,
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
          ]),
        ));
  }
}

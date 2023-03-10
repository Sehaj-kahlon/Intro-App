import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import '../responsive.dart';
import 'package:mailto/mailto.dart';

class options extends StatelessWidget {
  const options({super.key});
  // _launchURLBrowser() async {
  //   const url = 'https://en.wikipedia.org/wiki/Body_mass_index';
  //   if (await launch(url)) {
  //     await canLaunch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['sehajkahlon437@gmail.com'],
      // cc: ['cc1@example.com', 'cc2@example.com'],
      // subject: 'mailto example subject',
      // body: 'mailto example body',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }

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
              // onPressed: _launchURLBrowser,
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
                    SizedBox(
                      width: 20,
                    ),
                    Text('+91 9876217785', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(width: 1)),
                elevation: 0.0,
                backgroundColor: Colors.red.withOpacity(0.1),
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () async {
                launchMailto();
              },
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
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(width: 1)),
                elevation: 0.0,
                backgroundColor: Colors.lightBlueAccent.withOpacity(0.1),
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
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
          ]),
        ));
  }
}

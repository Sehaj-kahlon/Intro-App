import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import '../responsive.dart';
import 'package:mailto/mailto.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final snackBar = SnackBar(
  content: const Text('+91 9876217785 Copied to clipboard'),
);

class options extends StatelessWidget {
  const options({super.key});
  _launchURLBrowser(String url) async {
    url = '$url';
    if (await launch(url)) {
      await canLaunch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['sehajkahlon437@gmail.com'],
      // cc: ['cc1@example.com', 'cc2@example.com'],
      // subject: 'mailto example subject',
      // body: 'mailto example body',
    );
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
            //contact
            ElevatedButton(
              onPressed: () async {},
              onLongPress: () => {
                Clipboard.setData(ClipboardData(text: '+91 9876217785'))
                    .then((value) {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }),
              },
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('+91 9876217785', style: TextStyle(fontSize: 20)),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    // IconButton(
                    //   onPressed: () async {
                    //     Clipboard.setData(ClipboardData(text: '+91 9876217785'))
                    //         .then((value) {
                    //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    //     });
                    //   },
                    //   icon: const Icon(Icons.copy),
                    // ),
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
            //email
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
                backgroundColor: Colors.red.withOpacity(0.1),
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 10, bottom: 20),
              ),
            ),
            SizedBox(height: 10),
            //linkedin
            ElevatedButton(
              onPressed: () async {
                _launchURLBrowser(
                    'https://www.linkedin.com/in/sehaj-kahlon-35407025b');
              },
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.linkedinIn,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Sehaj Kahlon', style: TextStyle(fontSize: 20)),
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
            //github
            ElevatedButton(
              onPressed: () async {
                _launchURLBrowser('https://github.com/Sehaj-kahlon');
              },
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.github,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Sehaj (Seahj-kahlon)',
                        style: TextStyle(fontSize: 20)),
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
                _launchURLBrowser('https://www.codechef.com/users/sehaj_4026');
              },
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.code,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('CodeChef (sehaj_4026)',
                        style: TextStyle(fontSize: 20)),
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
                _launchURLBrowser(
                    'https://twitter.com/Sehajkahlon437?t=z7v-6p1vBInisH8WOKfU0Q&s=09');
              },
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.twitter,
                      size: 25,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Sehaj Kahlon', style: TextStyle(fontSize: 20)),
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
          ]),
        ));
  }
}

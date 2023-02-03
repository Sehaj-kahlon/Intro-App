import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//stateless widgets
//this widget returns a container
class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);
  // get ignore => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/dummy2.JPG'),
              ),
              // ignore : prefer_const_constructors
              Text(
                'Sehaj ',
                style: TextStyle(
                    //font family
                    fontFamily: 'Roboto-Black',
                    fontSize: 60.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    color: Colors.white),
              ),
              Text(
                'Student',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              Card(
                //style properties in card
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10.0,
                ),
                //listtile contians leading --icon , title -- text, trailing
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    '+91 XXXXXXXXXX',
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10.0,
                ),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.lightBlueAccent),
                  title: Text('Sehaj@gmial.com',
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

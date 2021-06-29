import 'package:flutter/material.dart';

// New Page
class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => new _AboutMeState();
}

// Navbar and new page handling
class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('My Business Card'),
          backgroundColor: Color(0xffb999900),
        ),
        body: Container(
          child:Scaffold(
            backgroundColor: Color.fromRGBO(57, 62, 70, 1),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/sandro.jpg'),
              ),
              Text(
                'Sandro Merkt',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Color(0xffb999900),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'TRAINEE SOFTWARE DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Color(0xffb999900),
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Color(0xffb999900),
                ),
              ),
              Card(
                  color: Color(0xffb666666),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Color(0xffb999900),
                    ),
                    title: Text(
                      '+41 44 452 11 40',
                      style: TextStyle(
                        color: Color(0xffb999900),
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Card(
                  color: Color(0xffb666666),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Color(0xffb999900),
                    ),
                    title: Text(
                      'sandro.merkt@numas.ch',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffb999900),
                          fontFamily: 'Source Sans Pro'),
                    ),
                  )),
              Card(
                  color: Color(0xffb666666),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Color(0xffb999900),
                    ),
                    title: Text(
                      'Freigutstrasse 26, 8002 Zurich',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffb999900),
                          fontFamily: 'Source Sans Pro'),
                    ),
                  )),
              Card(
                  color: Color(0xffb666666),
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.laptop_chromebook,
                      color: Color(0xffb999900),
                    ),
                    title: Text(
                      'www.numas.ch',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffb999900),
                          fontFamily: 'Source Sans Pro'),
                    ),
                  )),

            ],
          )),
    ),
        ));
  }
}
import 'package:flutter/material.dart';

// New Page
class Info extends StatefulWidget {
  @override
  _InfoState createState() => new _InfoState();
}

// Navbar and new page handling
class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('About us'),
          backgroundColor: Color.fromRGBO(153, 153, 0, 1),
        ),
        body: Container(
          child: OurMission(),
    ));
  }
}

class OurMission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(57, 62, 70, 1),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Our Mission',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 40.0,
                    color: Color(0xffb999900),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                  width: 150.0,
                  child: Divider(
                    color: Color(0xffb999900),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 4, 20, 5),
                child: Text(
                  'Our mission is to provide you with the information you need for your work: quickly, efficiently and in high quality. We actively support you in the procurement, processing and export of information of all kinds. Our experienced team consists of specialists from the IT as well as from the financial sector, who exercise their profession with passion and joy.',
                  style: TextStyle(
                          color: Colors.white30,
                          fontFamily: 'Roboto',
                          fontSize: 22.0,
                        ),
                      ),
                ),
                SizedBox(
                  height: 10.0,
                  width: 150.0,
                  child: Divider(
                    color: Color(0xffb999900),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                  width: 150.0,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.home, size: 20, color: Color(0xffb999900),),
                      ),
                      TextSpan(
                        text: "    Freigutstrasse 26, 8002 Zurich \n",
                        style: TextStyle(
                            color: Color(0xffb999900),
                        )
                      ),
                      WidgetSpan(
                        child: Icon(Icons.laptop, size: 20, color: Color(0xffb999900),),
                      ),
                      TextSpan(
                          text: "    www.numas.ch",
                          style: TextStyle(
                            color: Color(0xffb999900),
                          )
                      ),
                    ],
                  ),
                )
                // Card(
                //     margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //     color: Color(0xffb999900),
                //     child: ListTile(
                //       leading: Icon(
                //         Icons.home,
                //         color: Color(0xffb666666),
                //       ),
                //       title: Text(
                //         'Freigutstrasse 26, 8002 Zurich',
                //         style: TextStyle(
                //             fontSize: 20.0,
                //             color: Color(0xffb666666),
                //             fontFamily: 'Source Sans Pro'),
                //       ),
                //     ),
                // ),
]),
      ),
    ));
  }
}
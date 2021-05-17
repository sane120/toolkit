import 'package:flutter/material.dart';
import 'package:flutter_app_numas1/screens/loading_screen.dart';
import 'package:flutter_app_numas1/screens/info_screen.dart';
import 'tracker/price_screen.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task.dart';
import 'screens/AboutMe.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Tasks()..load(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: Homescreen(),
    ),
    );
  }
}
class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            SizedBox(height: 7 , width: 100,),
          ElevatedButton(
            child: Image.asset('images/weather.png', width: 350, height: 100),
            onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Weather()),
            );
          },
            style: ElevatedButton.styleFrom(
              primary: Color(0xffb2980B9),
            ),
        ),
            SizedBox(height: 7, width: 100,),
            ElevatedButton(
              child: Image.asset('images/coin.png', width: 350, height: 100),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tracker()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
            ),
            SizedBox(height: 7, width: 100,),
            ElevatedButton(
              child: Image.asset('images/list.png', width: 350, height: 100),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToDO()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffb666666),
              ),
            ),
            SizedBox(height: 7, width: 100,),
            ElevatedButton(
              child: Image.asset('images/info.png', width: 350, height: 100),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Info()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffb999900),
              ),
            ),
            SizedBox(height: 2, width: 100,),
            Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutMe()),
                    );
                  },
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/welcome.png', width: 450, height: 280),
                    ),),
                )
            )
          ],
        ),
            ),
          );
  }
}

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
class Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.white),
      home: PriceScreen(),
    );
  }
}

class ToDO extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
    );
  }
}

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutMe(),
    );
  }
}
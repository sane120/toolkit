import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app_numas1/screens/loading_screen.dart';
import 'package:flutter_app_numas1/screens/info_screen.dart';
import 'screens/price_screen.dart';
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
        initialRoute: '/',
        routes: {
          '/':(context) => Homescreen(),
          'weather': (context) => Weather(),
          'tracker': (context) => Tracker(),
          'ToDo': (context) => ToDO(),
          'info': (context) => Info(),
          'aboutme': (context) => AboutMe(),
        }
    ),
    );
  }
}
class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffb999900),
        title: Text('Welcome',
        style: TextStyle(color: Colors.white),),
      ),
      backgroundColor:  Color(0xffb666666),
      body: new Container(
        child: new Column(
          children: <Widget>[
            SizedBox(height: 7 , width: 100,),
          ElevatedButton(
            child: Image.asset('images/weather.png', width: 350, height: 80),
            onPressed: () {
              Navigator.pushNamed(context, 'weather');
              },
              style: ElevatedButton.styleFrom(
              primary: Color(0xffb2980B9),
            ),
        ),
            SizedBox(height: 7, width: 100,),
            ElevatedButton(
              child: Image.asset('images/coin.png', width: 350, height: 80),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, 'tracker');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
              ),
            ),
            SizedBox(height: 7, width: 100,),
            ElevatedButton(
              child: Image.asset('images/list.png', width: 350, height: 80),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, 'ToDo');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffb666666),
              ),
            ),
            SizedBox(height: 7, width: 100,),
            ElevatedButton(
              child: Image.asset('images/info.png', width: 350, height: 80),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, 'info');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffb999900),
              ),
            ),
            SizedBox(height: 2, width: 100,),
            Material(
                child: InkWell(
                  onTap: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, 'aboutme');
                  },
                  child: Container(
                    color: Color(0xffb666666),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('images/welcome.png', width: 450, height: 160),
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
    return LoadingScreen();
  }
}
class Tracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PriceScreen();
  }
}

class ToDO extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return TasksScreen();
  }
}

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AboutMe();
  }
}
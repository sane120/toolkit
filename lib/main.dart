import 'package:flutter/material.dart';
import 'package:flutter_app_numas1/screens/loading_screen.dart';
import 'tracker/price_screen.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task.dart';

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
          ElevatedButton(
            child: Text('Weather'),
            onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Weather()),
            );
          },
        ),
          ElevatedButton(
            child: Text('Coin Tracker'),
            onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Tracker()),
            );
            },
          ),
            ElevatedButton(
              child: Text('ToDo List'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ToDO()),
                );
              },
            ),
            SizedBox(height: 130, width: 100,),
            Image.asset('images/welcome.png', width: 420, height: 250),
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
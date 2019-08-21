// Flutter code sample for material.Card.2

// This sample shows creation of a [Card] widget that can be tapped. When
// tapped this [Card]'s [InkWell] displays an "ink splash" that fills the
// entire card.

import 'dart:async';

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(new MaterialApp(
    //home: new MyApp(),

    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen()
    },
    
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.black,
      body: new Center(


        child: new Image.asset('images/splash.jpeg'),

      ),
    );
  }
}

//======================================================//
//void main() => runApp(MyApp());
//
///// This Widget is the main application widget.
//class MyApp extends StatelessWidget {
//  static const String _title = 'Flutter Code Sample';
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: _title,
//      home: Scaffold(
//        appBar: AppBar(title: const Text(_title)),
//        body: MyStatelessWidget(),
//      ),
//    );
//  }
//}
//
///// This is the stateless widget that the main application instantiates.
//class MyStatelessWidget extends StatelessWidget {
//  MyStatelessWidget({Key key}) : super(key: key);
//
//  @override
//  Widget build(BuildContext context) {
//    return Center(
//      child: Card(
//        child: InkWell(
//          splashColor: Colors.blue.withAlpha(30),
//          onTap: () {
//            print('Card tapped.');
//          },
//          child: Container(
//            width: 300,
//            height: 100,
//            child: Text('A card that can be tapped'),
//          ),
//        ),
//      ),
//    );
//  }
//}

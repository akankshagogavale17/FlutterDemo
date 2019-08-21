import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

//class _HomeScreenState extends State<HomeScreen> {
//  @override
//  Widget build(BuildContext context) {
//    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('HomeScreen'),
//      ),
//      body: new Center(
//        child: new Text('Welcome to Home.!'),
//      ),
//    );
//  }
//}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Card View'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: new Container(
        padding: new EdgeInsets.all(10.0),
        child: new SingleChildScrollView(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Card(

                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,

                child: new Column(children: <Widget>[
                  new Column(children: <Widget>[
                    Image.network(
                      'https://homepages.cae.wisc.edu/~ece533/images/tulips.png',
                      fit: BoxFit.fill,
                    ),
                    GestureDetector(
                      onTap: (){
                        print("tappedd=============");
                      },
                    ),
                    Container(
                      color: Colors.blue.withOpacity(0.3),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("Tulip", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ]),
                ]),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(4),
              ),
              new Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: new Column(children: <Widget>[
                  new Column(children: <Widget>[
                    Image.network(
                      'https://homepages.cae.wisc.edu/~ece533/images/watch.png',
                      fit: BoxFit.fill,
                    ),
                    Container(
                      color: Colors.blueGrey.withOpacity(0.3),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("Watch", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ]),
                ]),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(4),
              ),
              new Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: new Column(children: <Widget>[
                  new Column(children: <Widget>[
                    Image.network(
                      'https://homepages.cae.wisc.edu/~ece533/images/tulips.png',
                      fit: BoxFit.fill,
                    ),
                    Container(
                      color: Colors.blue.withOpacity(0.3),
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("Tulip", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ]),
                ]),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                margin: EdgeInsets.all(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
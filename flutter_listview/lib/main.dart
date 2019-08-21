// Flutter code sample for material.AppBar.1

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

/// This Widget is the main application widget.
class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Card View'),
        backgroundColor: Colors.red,
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
                new Column(children: <Widget>[ Image.network(
                  'https://homepages.cae.wisc.edu/~ece533/images/tulips.png',
                  fit: BoxFit.fill,
                ),Container(
                  color: Colors.blue.withOpacity(0.3),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Tulip", style: TextStyle(fontSize: 20)),

                    ],
                  ),
                )

                  ,]),
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
                new Column(children: <Widget>[ Image.network(
                  'https://homepages.cae.wisc.edu/~ece533/images/watch.png',
                  fit: BoxFit.fill,

                ),Container(
                  color: Colors.blueGrey.withOpacity(0.3),
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Watch", style: TextStyle(fontSize: 20)),

                    ],
                  ),
                )

                  ,]),
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
                  )

                  ,]),
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


// Flutter code sample for material.AppBar.1

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
          primaryColor: Colors.white,
          backgroundColor: Colors.grey,
          scaffoldBackgroundColor: Colors.grey),
     // home: MyStatelessWidget(),
      home: MyHomePage(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatelessWidget {

  MyHomePage({Key key}) : super(key: key);
  List<Color> _colors = [
    //Get list of colors

    Colors.blue,
    Colors.brown,
    Colors.teal,
    Colors.purple
  ];
  int _currentIndex = 0;

  _onChanged() {
    //update with a new color when the user taps button
    int _colorCount = _colors.length;

    setState() {
      if (_currentIndex == _colorCount - 1) {
        _currentIndex = 0;
      } else {
        _currentIndex += 1;
      }
    }

    //setState(() => (_currentIndex == _colorCount - 1) ? _currentIndex = 1 : _currentIndex += 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List view"),
        ),
        body: new Container(
            padding: const EdgeInsets.all(14.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Card(
                    child: new Column(children: <Widget>[
                      new Row(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "Add Note",
                            style: new TextStyle(
                                fontSize: 25.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ]),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextField(
                            style: new TextStyle(fontSize: 15.0),
                            decoration: InputDecoration(labelText: "Title")),
                      ),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: TextField(
                          style: new TextStyle(fontSize: 15.0),
                          decoration: InputDecoration(labelText: "Description"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RaisedButton(
                              onPressed: _onChanged,
                              child: Text("Add"),
                              color: _colors[_currentIndex],
                            ),
                          )
                        ],
                      )
                    ])),
                new Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Note List",
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),

                    )
                  ],
                ),

//                new Row(
//                  children: <Widget>[
//                    Card(
//                      child: Text(
//                        "akki",
//                        style: new TextStyle(
//                            fontSize: 25.0,
//                            color: Colors.black,
//                            fontWeight: FontWeight.bold),
//                      ),
//                    )
//                  ],
//                ),

              ],
            ))





    );
  }
}

class SwipeList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListItemWidget();
  }
}

class ListItemWidget extends State<SwipeList> {
  List items = getDummyList();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(

          itemCount: items.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: Key(items[index]),
              background: Container(
                alignment: AlignmentDirectional.centerEnd,
                color: Colors.red,
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  items.removeAt(index);
                });
              },
              direction: DismissDirection.endToStart,
              child: Card(
                elevation: 5,
                child: Container(
                  height: 100.0,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                topLeft: Radius.circular(5)
                            ),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://is2-ssl.mzstatic.com/image/thumb/Video2/v4/e1/69/8b/e1698bc0-c23d-2424-40b7-527864c94a8e/pr_source.lsr/268x0w.png")
                            )
                        ),
                      ),
                      Container(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                items[index],

                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                child: Container(
                                  width: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.teal),
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Text("3D",textAlign: TextAlign.center,),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                child: Container(
                                  width: 260,
                                  child: Text("His genius finally recognized by his idol Chester",style: TextStyle(
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 48, 48, 54)
                                  ),),


                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }

  static List getDummyList() {
    List list = List.generate(10, (i) {
      return "Item ${i + 1}";
    });
    return list;
  }
}






class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);
  List<Color> _colors = [
    //Get list of colors

    Colors.blue,
    Colors.brown,
    Colors.teal,
    Colors.purple
  ];
  int _currentIndex = 0;

  _onChanged() {
    //update with a new color when the user taps button
    int _colorCount = _colors.length;

    setState() {
      if (_currentIndex == _colorCount - 1) {
        _currentIndex = 0;
      } else {
        _currentIndex += 1;
      }
    }

    //setState(() => (_currentIndex == _colorCount - 1) ? _currentIndex = 1 : _currentIndex += 1);
  }

  final notes = [
    "fluttermaster.com",
    "Update Android Studio to 3.3",
    "Implement ListView widget",
    "Demo ListView simplenote app",
    "Fixing app color",
    "Create new note screen",
    "Persist notes data",
    "Add screen transition animation",
    "Something long Something long Something long Something long Something long Something long",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Notes'),
          backgroundColor: Colors.white,
        ),
        body: new Container(
            padding: const EdgeInsets.all(14.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Card(
                    child: new Column(children: <Widget>[
                  new Row(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(
                        "Add Note",
                        style: new TextStyle(
                            fontSize: 25.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ]),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                        style: new TextStyle(fontSize: 15.0),
                        decoration: InputDecoration(labelText: "Title")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextField(
                      style: new TextStyle(fontSize: 15.0),
                      decoration: InputDecoration(labelText: "Description"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: _onChanged,
                          child: Text("Add"),
                          color: _colors[_currentIndex],
                        ),
                      )
                    ],
                  )
                ])),
                new Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Note List",
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
//                new Row(
//                  children: <Widget>[
//                    Card(
//                      child: Text(
//                        "akki",
//                        style: new TextStyle(
//                            fontSize: 25.0,
//                            color: Colors.black,
//                            fontWeight: FontWeight.bold),
//                      ),
//                    )
//                  ],
//                ),
                new Row(children: <Widget>[
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: notes.length,
                    itemBuilder: (BuildContext context, int i) => Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(notes[i]),
                        ],
                      ),
                    ),
                  )
                ])
              ],
            )));
//                new Row(children: <Widget>[
//
//                 new ListView.builder(
//                    itemCount: notes.length,
//                    itemBuilder: (context, pos) {
//                      return Padding(
//                          padding: EdgeInsets.only(bottom: 16.0),
//                          child: Card(
//                            color: Colors.white,
//                            child: Padding(
//                              padding: EdgeInsets.symmetric(
//                                  vertical: 24.0, horizontal: 16.0),
//                              child: Text(
//                                notes[pos],
//                                style: TextStyle(
//                                  fontSize: 18.0,
//                                  height: 1.6,
//                                ),
//                              ),
//                            ),
//                          ));
//                    },
//                  )
//                ])

    // ])
//                new Row(
//                    children: <Widget>[
//                  ListView.builder(
//                    itemCount: titles.length,
//                    itemBuilder: (context, index) {
//                      return Card(
//
//                           child: new Row(
//                               children: <Widget>[
//                              Padding(
//                                padding: EdgeInsets.all(5.0),
//                                child: ListTile(
//                                  title: Text(titles[index]),
//                                ),
//                              ),
//                            ]),
//
//                      );
//                    },
//                  )
//                ])
  }

}

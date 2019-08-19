// Flutter code sample for material.AppBar.1

// This sample shows an [AppBar] with two simple actions. The first action
// opens a [SnackBar], while the second action navigates to a new page.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(primaryColor: Colors.white),
      home: MyStatelessWidget(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

void openPage(BuildContext context) {
  final _formKey = GlobalKey<FormState>();
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Please Enter Valid Email';
    else
      return null;
  }

  Widget _buildTextFields() {
    return new Form(
      key: _formKey,
      child: new Column(
        children: <Widget>[
          new Container(
            child: new TextFormField(
              decoration: new InputDecoration(
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.grey)
                ,
                focusColor: Colors.black,
                hoverColor: Colors.black,
                labelText: 'Your Name',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter Name';
                }
                return null;
              },
              cursorColor: Colors.black,

            ),
          ),
          new Container(
            child: new TextFormField(
              decoration: new InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey)),
              keyboardType: TextInputType.emailAddress,
              validator: validateEmail,
              cursorColor: Colors.black,
            ),
          ),
          new Container(
            child: new TextFormField(
              decoration: new InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey)),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter Password';
                }
                return null;
              },
              obscureText: true,
              cursorColor: Colors.black,
            ),
          )
        ],
      ),
    );
  }

  Widget _bulidTermsAndConditions() {
    return new Container(
      alignment: Alignment.center,
      child: new Center(
        child:
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          new Container(
              padding: EdgeInsets.all(15.0),
              child: new Row(
                children: <Widget>[
                  FlatButton(
                    child: Text(
                      'Terms of Use',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (text) => new AlertDialog(
                              title: Text(
                                "Terms of Use",
                                style: TextStyle(fontSize: 12),
                              )));
                    },
                  ),
                  Text('and',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12)),
                  FlatButton(
                    child: Text(
                      'Privacy Policy',
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (text) => new AlertDialog(
                              title: Text(
                                "Privacy Policy",
                                style: TextStyle(fontSize: 12),
                              )));
                    },
                  )
                ],
              ))
        ]),
      ),
    );
  }

  Widget _bulidButton() {
    return new Container(
      alignment: Alignment.center,
      child: new Center(
        child:
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          new Expanded(
              child: RaisedButton(
                padding: const EdgeInsets.all(8.0),
                textColor: Colors.white,
                color: Colors.black,
                onPressed: () {
                  print("Pressed");
                  if (_formKey.currentState.validate()) {
                    print("Pressed");
                    Fluttertoast.showToast(
                        msg: "Siging Up...",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIos: 2,
                        backgroundColor: Colors.grey,
                        textColor: Colors.white,
                        fontSize: 14.0);
                  }
                },
                child: new Text("Sign Up", style: TextStyle(fontSize: 15)),
              ))
        ]),
      ),
    );
  }

  Widget _bulidOption() {
    return new Container(
      alignment: Alignment.center,
      child: new Center(
        child:
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          new Container(
              padding: EdgeInsets.all(15.0),
              child: new Row(
                children: <Widget>[
                  Text('Or sign up with social account',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                ],
              ))
        ]),
      ),
    );
  }

  Widget _bulidSocailButtons() {
    return new Container(

      alignment: Alignment.center,
      child: new Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                padding:
                EdgeInsets.only(left: 64, right: 64, top: 8, bottom: 8),
                color: Colors.blue,
                textColor: Colors.white,
                shape: StadiumBorder(),
                onPressed: () {},
                child: new Column(
                  children: <Widget>[Icon(FontAwesomeIcons.facebookF)],
                ),
              ),
              RaisedButton(
                padding:
                EdgeInsets.only(left: 64, right: 64, top: 8, bottom: 8),
                textColor: Colors.white,
                color: Colors.lightBlueAccent,
                onPressed: () {},
                shape: StadiumBorder(),
                child: new Column(
                  children: <Widget>[Icon(FontAwesomeIcons.twitter)],
                ),
              )
            ]),
      ),
    );
  }

  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: const Text('Sign Up', style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
            centerTitle: true,
            elevation: 0,
          ),
          body: new SingleChildScrollView(

            padding: EdgeInsets.all(30.0),
            child: new Column(

              children: <Widget>[
                _buildTextFields(),
                _bulidTermsAndConditions(),
                _bulidButton(),
                _bulidOption(),
                _bulidSocailButtons()
              ],
            ),

          )

      );
    },
  ));
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Login Demo'),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Sign Up',
            onPressed: () {
              openPage(context);
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
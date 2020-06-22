import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _showSnackBar(){
    print("hihi");
    final snackBar = new SnackBar(
      content: new Text("Hahaa"),
      duration: new Duration(seconds: 3),
      backgroundColor: Colors.green,
      action: new SnackBarAction(label: "ok", onPressed: (){
        print("Press ok on snackBar");
      }),
      );
      // how to display SnackBar?
      _scaffoldKey.currentState.showSnackBar(snackBar);
  }





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: Scaffold(
        key: _scaffoldKey,
        appBar: new AppBar(
          title: new Text("Snack Bar"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.add_call), 
            onPressed: _showSnackBar)
          ],
        ),
        body: new Text("hihi"),
      ),
    );
  }
}

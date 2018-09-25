import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "dsf",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("list"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.accessible),
            title: new Text("ds"),
          ),
          new ListTile(
            leading: new Icon(Icons.accessible),
            title: new Text("ds"),
          ),
          new ListTile(
            leading: new Icon(Icons.accessible),
            title: new Text("ds"),
          ),
        ],
      )
    );
  }
}

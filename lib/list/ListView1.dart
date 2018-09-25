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

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("list"),
        ),
        body: new ListView(
          scrollDirection: Axis.horizontal, //控制列表方向
          children: <Widget>[
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.lightBlue,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.deepPurple,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.yellow,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.lightBlue,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.deepPurple,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.lightBlue,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.deepPurple,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.lightBlue,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
            new Container(
              width: 100.0,
              height: 100.0,
              color: Colors.deepPurple,
            ),
          ],
        )
    );
  }
}

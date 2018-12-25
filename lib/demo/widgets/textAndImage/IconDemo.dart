import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("title"),
        ),
        body: new Center(
          child: new Icon(Icons.android, size: 100.0, color: Colors.red),
        ));

//    http://flutter.link/2018/03/09/Icons/  //TODO ICON暂时不写
  }
}

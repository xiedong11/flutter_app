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
      body: new Stack(
        children: <Widget>[
          new Align(
            alignment: new FractionalOffset(0.5, 0.5),
            child: new Text("ddfdsfdfdsfdsfdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd",
            style: new TextStyle(

            ),
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
            ),
          )
        ],
      ),
    );
  }
}



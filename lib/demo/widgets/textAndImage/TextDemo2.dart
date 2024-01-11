import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: ThemeData(
      primaryColor: Colors.red,
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Text")),
        body: Text(
          "Hello Flutter,Hello Flutter,Hello Flutter,"
          "Hello Flutter,Hello Flutter,"
          "Hello Flutter,Hello Flutter,"
          "Hello Flutter,Hello Flutter,"
          "Hello Flutter,Hello Flutter,",
          style: TextStyle(
              color: Colors.blue,
//            backgroundColor: Colors.black
              fontSize: 19,
              fontWeight: FontWeight.bold,
//            fontStyle: FontStyle.italic,
              letterSpacing: 2.0,
              wordSpacing: 10.0,
          ),
        ));
  }
}

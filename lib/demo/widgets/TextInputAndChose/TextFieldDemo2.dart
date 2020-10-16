import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: TextFieldDemo(),
  ));
}

class TextFieldDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PageState();
  }
}

class PageState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.person),
          labelText: "请输入账号...",
          labelStyle: TextStyle(color: Colors.red, fontSize: 13.0),
        ),
      ),
    );
    ;
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  bool _isChecked = false;

  void _onSwitchStateChanged(bool value) {
    setState(() {
      _isChecked = value;
      print(_isChecked.toString() + '-------------------');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("选择控件"),
      ),
      body: new Center(
        child: new Switch(value: false, onChanged: _onSwitchStateChanged),
      ),
    );
  }
}

//
//const Switch({
//Key key,
//@required this.value,
//@required this.onChanged,
//this.activeColor,
//this.activeTrackColor,
//this.inactiveThumbColor,
//this.inactiveTrackColor,
//this.activeThumbImage,
//this.inactiveThumbImage
//})

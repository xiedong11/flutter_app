import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  int _radioValue = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      _radioValue = value;
      print(_radioValue.toString() + '-------------------');
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("选择控件"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Radio(
                value: 0,
                groupValue: _radioValue,
                onChanged: handleRadioValueChanged),
            new Radio(
                value: 1,
                groupValue: _radioValue,
                activeColor: Colors.red,
                onChanged: handleRadioValueChanged),
            new Radio(
                value: 2,
                groupValue: _radioValue,
                onChanged: handleRadioValueChanged),
            new Radio(
                value: 3,
                groupValue: _radioValue,
                onChanged: handleRadioValueChanged),
          ],
        ),
      ),
    );
  }
}

//const Radio({
//Key key,
//@required this.value,
//@required this.groupValue,
//@required this.onChanged,
//this.activeColor
//})

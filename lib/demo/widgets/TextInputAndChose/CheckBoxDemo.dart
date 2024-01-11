import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  var _isChecked = true;

  void onCheckChange(bool? isChecked) {
    setState(() {
      _isChecked = isChecked!;
      print(_isChecked.toString()+'----');
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
          children: <Widget>[new Checkbox(value: _isChecked, onChanged: onCheckChange,activeColor: Colors.red,),
          ],

        ),
      ),
    );
  }
}
//const Checkbox({
//Key key,
//@required this.value,//当前值，是否选中
//@required this.onChanged,//选中变更监听
//this.activeColor,//选中时的颜色
//})
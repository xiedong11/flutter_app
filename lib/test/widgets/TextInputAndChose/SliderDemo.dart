import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  double _currentIndex = 0.0;

  void _onSliderStateChanged(double value) {
    setState(() {
      _currentIndex = value;
      print(_currentIndex.toString() + '-------------------');
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
            new Slider(
                value: _currentIndex,
                min: 0.0,
                max: 7.0,
                label: "星期$_currentIndex",
                onChanged: _onSliderStateChanged),
            new Text("星期$_currentIndex")
          ],
        ),
      ),
    );
  }
}

//const Slider({
//Key key,
//@required this.value,
//@required this.onChanged,
//this.min: 0.0,//最小值
//this.max: 1.0,//最小值
//this.divisions,
//this.label,//标志
//this.activeColor,
//this.inactiveColor,
//this.thumbOpenAtMin: false,
//})

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new TooltipDemo()));
}

class TooltipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tooltip轻量级提示"),
      ),
      body: new Center(
        child: new Tooltip(
            message: "Tooltip轻量级提示",
            child: new Icon(
              Icons.access_alarm,
              size: 80.0,
            ),
            verticalOffset: 80.0,
            //具体内部child Widget竖直方向的距离
            preferBelow: false,
            //是否显示在下面
            height: 100.0,
            //Tooltip的高度
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0)),
      ),
    );
  }
}

//Tooltip({
//Key key,
//@required this.message,//提示的内容
//this.height = 32.0,//Tooltip的高度
//this.padding = const EdgeInsets.symmetric(horizontal: 16.0),//padding
//this.verticalOffset = 24.0,//具体内部child Widget竖直方向的距离
//this.preferBelow = true,//是否显示在下面
//this.excludeFromSemantics = false,
//this.child,
//})

//height只能改变tip的高度，改变不了宽度，可以使用padding同时改变宽度跟高度

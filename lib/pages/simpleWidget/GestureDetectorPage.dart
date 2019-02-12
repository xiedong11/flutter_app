import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyState();
}

class MyState extends State {
  var _infoMessage="";

  void _printMessage(String message) {
    setState(() {
      _infoMessage = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Gestures"),
        ),
        body: new Column(
          children: <Widget>[
            new SizedBox(height: 100.0,),
            new Center(
                child: new GestureDetector(
              child: new Text(
                "我被赋予了点击触摸能力...",
                style: new TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                _printMessage("------onTap");
              },
              onDoubleTap: () {
                _printMessage("------onDoubleTap");
              },
              onLongPress: () {
                _printMessage("-----onLongPress");
              },
              onVerticalDragStart: (details) {
                _printMessage("在垂直方向开始位置:" + details.globalPosition.toString());
              },
              onVerticalDragEnd: (details) {
                _printMessage("在垂直方向结束位置:" + details.primaryVelocity.toString());
              },
            )),
            new SizedBox(height: 200.0,),
            new Text(_infoMessage,style: new TextStyle(color: Colors.red,fontSize: 18.0),)
          ],
        ));
  }
}

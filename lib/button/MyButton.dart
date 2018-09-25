import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'GestureDetector',
    home: new MyButton(),
  ));
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print("Button is click。。。。");
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.only(left: 80.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10.0),
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}

/**
 * 手势监听
 */
class MyButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print("Button is click。。。。");
      },
      onDoubleTap: () {
        print("Button is double click。。。。");
      },
      onLongPress: () {
        print("Button is long press。。。。");
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(80.0),
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10.0),
          color: Colors.lightBlue,
        ),
        child: new Center(
          child: new Text('点击监听'),
        ),
      ),
    );
  }
}

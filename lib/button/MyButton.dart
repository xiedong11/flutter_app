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

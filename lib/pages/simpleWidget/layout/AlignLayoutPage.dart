import 'package:flutter/material.dart';

class AlignLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Align布局'),
      ),
      body: new Stack(
        children: <Widget>[
          new Align(
            alignment: new FractionalOffset(0.0, 0.5),
            child: new Text(
              '我在左边缘中心',
              style: new TextStyle(fontSize: 35.0),
            ),
          ),
          new Align(
            alignment: new FractionalOffset(1.0, 1.0),
            child: new Text(
              '我在右下角',
              style: new TextStyle(fontSize: 30.0),
            ),
          )
        ],
      ),
    );
  }
}
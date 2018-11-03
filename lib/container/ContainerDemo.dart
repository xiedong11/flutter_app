import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "布局",
    home: new ContainerDemo(),
  ));
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Container(
        width: 200.0,
        height: 400.0,
        decoration: new BoxDecoration(
          color: Colors.lightBlueAccent,
          border: new Border.all(
            color: Colors.redAccent,
            width: 5.0,
          ),
        ),
        child: new Text('容器内部文字',
          style: new TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}

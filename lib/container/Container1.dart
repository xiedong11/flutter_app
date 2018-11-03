import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("title"),
        ),
        body: new Container(
          height: 300.0,
          width: 300.0,
          alignment: Alignment.bottomRight,
          color: Colors.blue,
          child: new Container(
            height: 100.0,
            width: 100.0,
            color: Colors.deepPurple,
            child: new Icon(
              Icons.android,
              size: 50.0,
              color: Colors.redAccent,
            ),
            alignment: Alignment.bottomRight,
          ),
        ));
  }
}

//alignment: 内部Widget对齐方式，左上对齐topLeft、垂直顶部对齐，水平居中对齐topCenter、右上topRight、垂直居中水平左对齐centerLeft、居中对齐center、垂直居中水平又对齐centerRight、底部左对齐bottomLeft、底部居中对齐bottomCenter、底部右对齐bottomRight
//
//padding： 内间距，子Widget距Container的距离。
//
//color： 背景颜色
//
//decoration： 背景装饰
//
//foregroundDecoration： 前景装饰
//
//width：容器的宽
//
//height：容器的高
//
//constraints：容器宽高的约束，容器最终的宽高最终都要受到约束中定义的宽高影响
//
//margin：容器外部的间隔
//
//transform： Matrix4变换

//child：内部子Widget

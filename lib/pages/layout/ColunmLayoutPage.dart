import 'package:flutter/material.dart';

class ColunmLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("水平方向布局"),
      ),

      //布局方向  Row:水平布局 Column：垂直布局
      body: new Column(
        children: <Widget>[
          new Text(
            "Colunm跟Row都是一个盛放children widget的array，不同的是一个是在水平方向（horizontal），另一个是竖直方向（vertical）",
            style: new TextStyle(
              fontSize: 15.0,
            ),
            textAlign: TextAlign.center,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new RaisedButton(
                onPressed: () {
                  print('点击红色按钮');
                },
                color: const Color(0xffff0000),
                child: new Text('红色按钮'),
              ),
              new RaisedButton(
                onPressed: () {
                  print("点击蓝色按钮");
                },
                color: const Color(0xff000099),
                child: new Text('蓝色按钮'),
              ),
              new RaisedButton(
                onPressed: () {
                  print("点击粉色按钮");
                },
                color: const Color(0xffee9999),
                child: new Text('粉色按钮'),
              )
            ],
          ),
        ],
      ),
    );
    ;
  }
}

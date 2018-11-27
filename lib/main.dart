import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(home: new PullToRefreshDemo()));
}

class PullToRefreshDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _editingController1 = new TextEditingController();
    TextEditingController _editingController2 = new TextEditingController();
    return Scaffold(
      appBar: new AppBar(
        title: new Text("文本输入"),
      ),
      body: new Center(
          child: new Column(
        children: <Widget>[
          new Text("简单文本输入框", style: new TextStyle(fontSize: 20.0)),
          new TextField(
            keyboardType: TextInputType.text, //指定输入方式为文本输入
            controller: _editingController1,
          ),
          new TextField(
            keyboardType: TextInputType.number, //指定唤起软键盘时默认显示数字键盘
            controller: _editingController2,
          ),
        ],
      )),
    );
  }
}

//http://flutter.link/2018/05/11/Flutter%E5%8A%A8%E7%94%BB%E3%80%901%E3%80%91/

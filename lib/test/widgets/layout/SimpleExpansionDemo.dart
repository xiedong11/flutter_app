import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new ExPansionTileDemo()));
}

class ExPansionTileDemo extends StatelessWidget {
  void _isExpansion(bool isExpand) {
    if (isExpand) {
      print("--------------打开");
    } else {
      print("--------------关闭");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ExpansionTileDemo"),
      ),
      body: new ListView(
        children: <Widget>[
          new ExpansionTile(
            title: new Text("更多精彩"), //和ListTitle类似，文字
            leading: new Icon(Icons.ac_unit), //和ListTitle类似，在文字前面的Widget
            children: <Widget>[
              new Text("Item 1"),
              new Text("Item 1"),
              new Text("Item 1"),
            ],
            onExpansionChanged: (bool) {
              _isExpansion(bool);
            },
          )
        ],
      ),
    );
  }
}
//ExpansionTile({
//Key key,
//this.leading,//和ListTitle类似，在文字前面的Widget
//@required this.title,//和ListTitle类似，文字
//this.backgroundColor,//背景
//this.onExpansionChanged,//展开或者关闭的监听
//this.children = const <Widget>[],//内部孩子
//this.trailing,//和ListTitle类似，右侧图标
//this.initiallyExpanded = false,//默认是否展开
//})
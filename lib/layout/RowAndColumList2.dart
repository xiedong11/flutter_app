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
        body: new Column(
          children: <Widget>[
            new MyListItem(Icons.chat, "消息记录"),
            new MyListItem(Icons.stars, "我的收藏"),
            new MyListItem(Icons.lock, "我的账户"),
            new MyListItem(Icons.send, "意见反馈"),
            new MyListItem(Icons.settings, "系统设置"),
          ],
        ));
  }
}

/**
 * 封装列表数据
 */
class MyListItem extends StatelessWidget {
  IconData myIcon;
  String title;

  MyListItem(this.myIcon, this.title);

  @override
  Widget build(BuildContext context) {
    return new Container(
        padding: const EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            border: new Border(bottom: new BorderSide(color: Colors.grey))),
        child: new Row(
          children: <Widget>[
            new Icon(
              myIcon,
              color: Colors.lightBlueAccent,
            ),
            new Expanded(
                child: new Text(
                  title,
                  textAlign: TextAlign.right,
                ))
          ],
        ));
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar"),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(
              Icons.print,
              size: 30.0,
              color: Colors.lightBlueAccent,
            ),
            title: new Text("标题1"),
            subtitle: Icon(Icons.message),
          ),
          new Divider(
            height: 1.0,
            indent: 10.0,
          ),
          new ListTile(
            leading: new Icon(
              Icons.apps,
            ),
            title: new Text("我是标题"),
          ),
          new Divider(
            height: 1.0,
            indent: 10.0,
          ),
          new ListTile(
            leading: new Icon(
              Icons.apps,
            ),
            title: new Text("我是标题"),
          ),
          new Divider(
            height: 1.0,
            indent: 10.0,
          ),
          new ListTile(
            leading: new Icon(
              Icons.apps,
            ),
            title: new Text("我是标题"),
          ),
        ],
      ),
    );
  }
}
//ListView({
//Key key,
//Axis scrollDirection: Axis.vertical,//滚动方向
//bool reverse: false,//十分反向显示数据
//ScrollController controller,
//bool primary,
//ScrollPhysics physics,//物理滚动
//bool shrinkWrap: false,
//EdgeInsetsGeometry padding,
//this.itemExtent,//item有效范围
//bool addAutomaticKeepAlives: true,//自动保存视图缓存
//bool addRepaintBoundaries: true,//添加重绘边界
//List<Widget> children: const <Widget>[],
//})
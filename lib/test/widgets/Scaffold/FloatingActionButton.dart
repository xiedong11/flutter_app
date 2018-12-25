import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'd', home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.android),
        automaticallyImplyLeading: true,
        centerTitle: true,
        //标题居中
        elevation: 10.0,
        //底部阴影
        backgroundColor: Colors.red,
        title: new Text("title"),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: null,
        child: new Icon(Icons.android),
        backgroundColor: Colors.red,
        highlightElevation: 10.0,
        elevation: 20.0,
//        mini: true, //是否启用小图标
      ),
    );
  }
}

//const FloatingActionButton({
//Key key,
//this.child,
//this.tooltip,//提示，长按按钮提示文字
//this.backgroundColor,//背景颜色
//this.heroTag: const _DefaultHeroTag(),//页面切换动画Tag
//this.elevation: 6.0,//阴影
//this.highlightElevation: 12.0,//高亮阴影
//@required this.onPressed,//点击事件
//this.mini: false//是否使用小图标
//})

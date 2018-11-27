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
    );
  }
}

//AppBar({
//Key key,
//this.leading,主导Widget
//this.automaticallyImplyLeading: true,
//this.title,
//this.actions,其他附加最贱右上角
//this.flexibleSpace,//伸缩空间，显示在title上面
//this.bottom,//显示在title下面
//this.elevation: 4.0,//阴影高度
//this.backgroundColor,
//this.brightness,明暗模式
//this.iconTheme,
//this.textTheme,
//this.primary: true,是否是用primary
//this.centerTitle,//标题是否居中
//this.titleSpacing: NavigationToolbar.kMiddleSpacing,//title与leading的间隔
//this.toolbarOpacity: 1.0,//title级文字透明度
//this.bottomOpacity: 1.0,//底部文字透明度
//})

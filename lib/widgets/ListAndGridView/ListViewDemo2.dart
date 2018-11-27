import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

//利用listview.Builder简单生成20条数据
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SnackBar"),
      ),
      body: new ListView.builder(
        //相比于new ListView()只不过多出了两个参数而已，一个是itemCount指定item的数量，一个是itemBuilder，用来构建Item。
        itemBuilder: (BuildContext context, int index) {
          return new ListTile(
            title: new Text("$index"),
            leading: new Icon(
              Icons.nature_people,
              color: Colors.red,
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
//由于数据量过少它现在是不能滑动的。大家可以在下面多加几个Widget试试效果。
//
//在Flutter中有三种构建ListView的方式，刚才介绍的是最简单的一种，但是却不是最常用的，
//因为它仅仅适用于已知数量或者较少数量的Item的情况。如果有未知数量或者无限个Item的情况，再使用上述的方法将不再适用。
//
//那么，我们可以尝试下ListView.builder（）和ListView.custom（）。
//
//ListView.builder（）和ListView.custom（）的用法基本相同，只不过custom可以根据自己的需要控制Item显示方式，如Item显示大小。
//
//我们今天来看下ListView.builder（）
//ListView.builder({
//Key key,
//Axis scrollDirection: Axis.vertical,
//bool reverse: false,
//ScrollController controller,
//bool primary,
//ScrollPhysics physics,
//bool shrinkWrap: false,
//EdgeInsetsGeometry padding,
//this.itemExtent,
//@required IndexedWidgetBuilder itemBuilder,//item构建者
//int itemCount,//item数量
//bool addAutomaticKeepAlives: true,
//bool addRepaintBoundaries: true,
//})

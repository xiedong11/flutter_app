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
        body: new Row(
          children: <Widget>[
            new Expanded(child:new Text("sd发的撒啊啊啊啊啊啊啊啊fa",textAlign: TextAlign.center,) ,flex: 1,), //参数flex可以调整布局所占的比重
            new Expanded(child:new Text("sdfa") ),
            new Expanded(child:new Text("sdfa") ),


//当布局为Row排列是，如果内容过多，可能会被挤出屏幕，借助于Expanded Widget可以实现Text自动换行，并且可以实现子Widget宽（高）按比例布局
//            new Text("sdfa"),
//            new Text("sdfa")
          ],
        ));
  }
}

//  Column使用与Row类似，不再赘述


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
        body:new IndexedStack(
          index: 1,  //不指定默认显示第一个，只显示index对应的wigdet，index默认从角标0开始
          children: <Widget>[
            new Icon(Icons.ac_unit,size: 100.0,),
            new Icon(Icons.android)
          ],
          alignment: Alignment.bottomRight,
        )
    );
  }
}


//在上面我们看了下Stack，基本上知道了Stack的用法，其实IndexedStack的用法和Stack一样，
//只不过IndexedStack只显示指定index位置的Widget,其他的位置的Widget不会显示。
//其实这个IndexedStack还是很有用的，比如说你的应用现实的额多个状态（加载中、加载完成、网络错误）可以使用这个组件来很好的完成控制。
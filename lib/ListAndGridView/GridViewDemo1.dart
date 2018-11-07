import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("GridView"),
      ),
      body: new GridView(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, //设置每行的个数
            mainAxisSpacing: 10.0, //设置上下item间隔
            crossAxisSpacing: 10.0, //设置左右item间隔
            childAspectRatio: 1.0),
        children: <Widget>[
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
          new Container(
            child: new Icon(
              Icons.cake,
              size: 50.0,
            ),
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

//GridView
//GirView的用法和ListView类似，只不过由于GridView可以在一列或者一行显示多个Item，
//所以在构造方法中就多了个参数来配置一行（列）有几个Item和Item的间隔
//
//构造方法：
//GridView({
//Key key,
//Axis scrollDirection: Axis.vertical,
//bool reverse: false,
//ScrollController controller,
//bool primary,
//ScrollPhysics physics,
//bool shrinkWrap: false,
//EdgeInsetsGeometry padding,
//@required this.gridDelegate,//没错，它就是控制GridView的
//bool addAutomaticKeepAlives: true,
//bool addRepaintBoundaries: true,
//List<Widget> children: const <Widget>[],
//})
//看下gridDelegate参数
//
//可以传入SliverGridDelegateWithFixedCrossAxisCount对象和SliverGridDelegateWithMaxCrossAxisExtent对象。
//
//其中SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item，
//SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
//
//国际惯例，我们还是只介绍一个，那就SliverGridDelegateWithFixedCrossAxisCount吧。

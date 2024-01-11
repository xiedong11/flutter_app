import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}


//使用命名导航器路由
//
//移动应用程序经常管理大量路由，通常可以通过名称来引用它们。路由名称按惯例使用类似路径的结构，
//例如“/a/b/c”，应用程序的主页路由默认为“/”。
//
//可以使用Map<String, WidgetBuilder>创建MaterialApp，该Map映射从路由的名称到将创建它的构建器，MaterialApp使
//用此映射为导航器的onGenerateRoute回调创建一个值。


//Map<String, WidgetBuilder> routes是应用程序的顶级路由表,当使用Navigator.pushNamed推送命名路由时，
//将在此映射中查找路由名称。如果名称存在，则相关联的WidgetBuilder将用于构造一个MaterialPageRoute，该新的路由执行适当的过渡。
//
//如果应用程序只有一个页面，那么可以使用home指定它，如果指定了home，那么在此映射中为Navigator.defaultRouteName
//提供路由是一个错误。如果请求没有在此表中指定的路由（或通过home），则会调用onGenerateRoute回调来构建页面。

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '使用命名导航器路由',
      theme: new ThemeData(primarySwatch: Colors.brown),
      home: new MyHomePage(title: '导航页'),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => new MyPage(title: 'A页面'),
        '/b': (BuildContext context) => new MyPage(title: 'B页面'),
        '/c': (BuildContext context) => new MyPage(title: 'B页面'),
      },
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: Center(
        child: new Text(
          title,
          style: new TextStyle(
            fontSize: 35.0,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Row(
        children: <Widget>[
          new ElevatedButton(
              child: new Text("按钮A"),
              onPressed: () {
                Navigator.of(context).pushNamed('/a');
              }),
          new ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/b');
            },
            child: new Text("按钮B"),
          ),
          new ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/c');
            },
            child: new Text("按钮C"),
          )
        ],
      ),
    );
  }
}

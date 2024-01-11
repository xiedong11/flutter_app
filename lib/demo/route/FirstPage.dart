import 'package:flutter/material.dart';
import 'package:flutter_app/demo/route/SecondPage.dart';
import 'package:flutter_app/demo/route/SecondPageWithParams.dart';
import 'package:flutter_app/demo/route/SecondPageWithParams2.dart';
import 'package:flutter_app/demo/route/SecondPageWithResult.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      '/SecondPage': (BuildContext context) => new SecondPage(),
      '/SecondPageWithParams': (BuildContext context) =>
      new SecondPageWithParams("带参数", "我是从上一个页传递过来的参数"),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("路由跳转"),
        ),
        body: new Center(
          child: new Column(
            children: <Widget>[
              //静态路由跳转 Navigator.of(context).pushNamed('/****');
              new ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/SecondPage');
                },
                child: new Text(
                  '无参跳转到下个页面',
                  style: new TextStyle(color: Colors.white),
                ),
                // color: Colors.brown,
                // highlightColor: Colors.lightBlue,
              ),
              new ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/SecondPageWithParams');
                },
                child: new Text(
                  '带参跳转到下个页面',
                  style: new TextStyle(color: Colors.white),
                ),
                // color: Colors.brown,
                // highlightColor: Colors.lightBlue,
              ),

              new ElevatedButton(
                onPressed: () {
                  //带回第二个页返回的数据值
                  Navigator.push<String>(context,
                      new MaterialPageRoute(builder: (BuildContext context) {
                        return new SecondPageWithResult();
                      })).then((String? result) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return new AlertDialog(
                            content: new Text(result!),
                          );
                        });
                  });

//                  Future future =
//                      Navigator.of(context).pushNamed("/SecondPageWithResult");
//                  future.then((value) {
//                    showDialog(
//                        context: context,
//                        child: new AlertDialog(
//                          title: new Text(value),
//                        ));
//                  });
                },
                child: new Text(
                  '调到下一个页面，并且带回返回值',
                  style: new TextStyle(color: Colors.white),
                ),
                // color: Colors.brown,
                // highlightColor: Colors.lightBlue,
              ),

              //动态路由在Navigator中还有一个方法是push（）方法，需要传入一个Route对象，在Flutter中我们可以使用PageRouteBuilder来构建这个Route对象。
              new ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(new PageRouteBuilder(pageBuilder:
                      (BuildContext context, Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return new SecondPageWithParams2("动态传参");
                  }));
                },
                child: new Text(
                  '动态路由传参到下个页面',
                  style: new TextStyle(color: Colors.white),
                ),
                // color: Colors.brown,
                // highlightColor: Colors.lightBlue,
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

void main() {
  runApp(new MaterialApp(home: new MyNetWork()));
}

class MyNetWork extends StatelessWidget {
  void doGet() {
    print("--------------------"+"开始请求");
    http.get("https://api.github.com/users/xiedong11").then((response){
      print("--------------------"+response.body);
    }).catchError((error){
      print("--------------------"+error);
    }).whenComplete((){
      print("--------------------"+"请求完成");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("网络请求DEMO"),
      ),
      body: new FlatButton(
        onPressed: () {
          doGet();
        },
        child: Text("开始请求"),color: Colors.brown,),
    );
  }
}
//Flutter中的网络操作
//跟前面讲到的本地存储操作一样，Flutter给我们提供了第三发库的支持，同样的下面三个操作
//
//打开项目的pubspec.yaml配置我文件在dependencies:节点下新增如下配置
//http: ^0.11.3+16
//
//点击开发工具提示的packages get按钮或者在命令行输入flutter packages get来同步第三方插件
//
//在自己的Dart文件中引入插件即可正常使用了
//import ‘package:http/http.dart’ as http
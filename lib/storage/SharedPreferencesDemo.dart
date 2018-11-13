import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(new MaterialApp(home: new MyApp()));
}


class MyApp extends StatelessWidget {
  final String mUserName = "username";
  final _userNameController = new TextEditingController();

  /**
   * 存放数据
   */
  saveData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(
        mUserName, _userNameController.value.text.toString());
  }

  /**
   * 获取数据
   */
  Future<String> getData() async {
    var userName;
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    userName = sharedPreferences.getString(mUserName);
    return userName;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("SharedPreferences"),
      ),
      body: new Center(
        child: new Builder(builder: (BuildContext context) {
          return new Column(
            children: <Widget>[
              TextField(
                controller: _userNameController,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(10.0),
                    icon: new Icon(Icons.nature_people),
                    labelText: "请输入用户名",
                    helperText: "注册时填写的名字"),
              ),
              RaisedButton(
                onPressed: () {
                  if (_userNameController.value.text.toString().length < 1) {
                    print("---------------------" + '太短');
                  } else {
                    saveData();
                    print("---------------------" + '存储成功');
                  }
                },
                child: new Text(
                  "存储用户名",
                  style: new TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
              RaisedButton(
                color: Colors.greenAccent,
                child: Text("获取"),
                onPressed: () {
                  Future<String> userName = getData();
                  userName.then((String name) {
                    print("---------------------" + name);
                    Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text("存储的用户名为:$name")));
                  }).catchError((String error) {
                    print("---------------------" + error);
                  });
                },
              )
            ],
          );
        }),
      ),
    );
  }
}


//Preferences存储
//Flutter中本身并不支持Preferences存储，需要借助于第三发的组件来实现。
//
//打开 https://github.com/flutter/plugins
//
//
//或者 https://pub.dartlang.org/flutter
//
//可以在上面找到需要官方和第三方提供的其他组件，我们使用的shared_preferences就是其中的一个
//打开shared_preferences插件对象的页面即可看到插件相关的信息
//
//现在我们需要在项目里面引入shared_preferences插件
//
//第三发插件的引用
//打开项目的pubspec.yaml配置我文件在dependencies:节点下新增如下配置 > shared_preferences: “^0.4.1”
//
//点击开发工具提示的packages get按钮或者在命令行输入flutter packages get来同步第三方插件
//
//在自己的Dart文件中引入插件即可正常使用了
//import ‘package:shared_preferences/shared_preferences.dart’;
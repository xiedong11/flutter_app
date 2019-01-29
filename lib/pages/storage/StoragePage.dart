import 'package:flutter/material.dart';
import 'package:flutter_app/view/MyRaisedButton.dart';
import 'package:flutter_app/pages/storage/FileStorage.dart';
import 'package:flutter_app/pages/storage/SharedPerferenceStorage.dart';
import 'package:flutter_app/pages/storage/SqfliteStorage.dart';

class StoragePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("数据存储"),
      ),
      body: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyRaisedButton(new FileStorage(), "文件存储"),
            MyRaisedButton(new SharedPerferenceStorage(), "shared_preferences存储"),
            MyRaisedButton(new SqfliteStorage(), "Sqflite数据库存储"),

          ],
        ),
      ),
    );
  }
}
